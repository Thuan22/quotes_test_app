import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_state.freezed.dart';

@freezed
class QuoteState with _$QuoteState {
  const factory QuoteState({required List<String> quotes}) = QuoteStateData;

  const factory QuoteState.loading() = QuoteStateLoading;

  const factory QuoteState.error(dynamic error) = QuoteStateError;
}
