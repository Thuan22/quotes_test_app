import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({super.key, required this.quote});
 final String quote;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.format_quote,
                size: 40,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              quote,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20,),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.format_quote,
                size: 40,
              ),
            ),
          ],
        ),
        ],
    );
  }
}
