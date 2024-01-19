import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_demo_app/bloc/quote_bloc.dart';
import 'package:share_plus/share_plus.dart';

import 'bloc/quote_state.dart';
import 'initialize_dependencies.dart';
import 'widget/quote_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Quote app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  final quoteBloc = QuoteBloc();
  final controller = PageController();
  late AnimationController _animationController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    quoteBloc.getQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0).copyWith(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<QuoteBloc, QuoteState>(
                bloc: quoteBloc,
                builder: (context, state) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          Share.share(
                              'Check out my favorite quote: ${state is QuoteStateData ? state.quotes[currentIndex] : ''}');
                        },
                        child: const Icon(Icons.ios_share)),
                  );
                }),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<QuoteBloc, QuoteState>(
                bloc: quoteBloc,
                builder: (context, state) {
                  return state.when(
                      (quotes) {
                        return PageView.builder(
                          controller: controller,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return AnimatedBuilder(
                                animation: controller,
                                builder: (context, child) {
                                  double value = 1;
                                  if (controller.position.haveDimensions) {
                                    value = controller.page! - index;
                                    value = (1 - (value / 1.5)).clamp(0.0, 1.0);
                                  }
                                  return Center(
                                    child: Opacity(
                                      opacity: value,
                                      child: child,
                                    ),
                                  );
                                },
                                child: QuoteWidget(quote: quotes[index]));
                          },
                        );
                      },
                      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
                      error: (e) {
                        return const Center(
                            child: Text(
                          'Error Happen! Please check your connection and try again!',
                          textAlign: TextAlign.center,
                        ));
                      });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // when page reach to 6th will call the next ten quotes
                if (controller.page != 0 && controller.page! % 6 == 0) {
                  quoteBloc.loadMoreQuote();
                }
                currentIndex = controller.page!.toInt() + 1;
                controller.animateToPage((controller.page ?? 0).toInt() + 1,
                    duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _animationController.dispose();
    super.dispose();
  }
}
