import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'quote_state.dart';

class QuoteBloc extends Cubit<QuoteState> {
  QuoteBloc() : super(const QuoteStateLoading());
  late final dio = GetIt.instance.get<Dio>();

  Future<void> getQuote() async {
    try {
      emit(const QuoteStateLoading());
      final quotes = [];
      for (var i = 0; i < 10; i++) {
        final result = await dio.get('/v2/quotes');
        if ((result.data as List<dynamic>).isNotEmpty) {
          quotes.add((result.data).first);
        }
      }
      emit(
        QuoteStateData(
          quotes: [...quotes],
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(QuoteStateError(e));
    }
  }

  Future<void> loadMoreQuote() async {
    try {
      final quotes = [...?state.mapOrNull((value) => value.quotes)];
      for (var i = 0; i < 10; i++) {
        final result = await dio.get('/v2/quotes');
        if ((result.data as List<dynamic>).isNotEmpty) {
          quotes.add((result.data).first);
        }
      }
      emit(
        QuoteStateData(
          quotes: [...quotes],
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(QuoteStateError(e));
    }
  }
}
