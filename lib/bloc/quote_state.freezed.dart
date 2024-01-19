// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> quotes) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> quotes)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> quotes)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(QuoteStateData value) $default, {
    required TResult Function(QuoteStateLoading value) loading,
    required TResult Function(QuoteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(QuoteStateData value)? $default, {
    TResult? Function(QuoteStateLoading value)? loading,
    TResult? Function(QuoteStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(QuoteStateData value)? $default, {
    TResult Function(QuoteStateLoading value)? loading,
    TResult Function(QuoteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteStateCopyWith<$Res> {
  factory $QuoteStateCopyWith(
          QuoteState value, $Res Function(QuoteState) then) =
      _$QuoteStateCopyWithImpl<$Res, QuoteState>;
}

/// @nodoc
class _$QuoteStateCopyWithImpl<$Res, $Val extends QuoteState>
    implements $QuoteStateCopyWith<$Res> {
  _$QuoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuoteStateDataImplCopyWith<$Res> {
  factory _$$QuoteStateDataImplCopyWith(_$QuoteStateDataImpl value,
          $Res Function(_$QuoteStateDataImpl) then) =
      __$$QuoteStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> quotes});
}

/// @nodoc
class __$$QuoteStateDataImplCopyWithImpl<$Res>
    extends _$QuoteStateCopyWithImpl<$Res, _$QuoteStateDataImpl>
    implements _$$QuoteStateDataImplCopyWith<$Res> {
  __$$QuoteStateDataImplCopyWithImpl(
      _$QuoteStateDataImpl _value, $Res Function(_$QuoteStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_$QuoteStateDataImpl(
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$QuoteStateDataImpl implements QuoteStateData {
  const _$QuoteStateDataImpl({required final List<String> quotes})
      : _quotes = quotes;

  final List<String> _quotes;
  @override
  List<String> get quotes {
    if (_quotes is EqualUnmodifiableListView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotes);
  }

  @override
  String toString() {
    return 'QuoteState(quotes: $quotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteStateDataImpl &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteStateDataImplCopyWith<_$QuoteStateDataImpl> get copyWith =>
      __$$QuoteStateDataImplCopyWithImpl<_$QuoteStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> quotes) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(quotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> quotes)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(quotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> quotes)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(quotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(QuoteStateData value) $default, {
    required TResult Function(QuoteStateLoading value) loading,
    required TResult Function(QuoteStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(QuoteStateData value)? $default, {
    TResult? Function(QuoteStateLoading value)? loading,
    TResult? Function(QuoteStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(QuoteStateData value)? $default, {
    TResult Function(QuoteStateLoading value)? loading,
    TResult Function(QuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class QuoteStateData implements QuoteState {
  const factory QuoteStateData({required final List<String> quotes}) =
      _$QuoteStateDataImpl;

  List<String> get quotes;
  @JsonKey(ignore: true)
  _$$QuoteStateDataImplCopyWith<_$QuoteStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuoteStateLoadingImplCopyWith<$Res> {
  factory _$$QuoteStateLoadingImplCopyWith(_$QuoteStateLoadingImpl value,
          $Res Function(_$QuoteStateLoadingImpl) then) =
      __$$QuoteStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuoteStateLoadingImplCopyWithImpl<$Res>
    extends _$QuoteStateCopyWithImpl<$Res, _$QuoteStateLoadingImpl>
    implements _$$QuoteStateLoadingImplCopyWith<$Res> {
  __$$QuoteStateLoadingImplCopyWithImpl(_$QuoteStateLoadingImpl _value,
      $Res Function(_$QuoteStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuoteStateLoadingImpl implements QuoteStateLoading {
  const _$QuoteStateLoadingImpl();

  @override
  String toString() {
    return 'QuoteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuoteStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> quotes) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> quotes)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> quotes)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(QuoteStateData value) $default, {
    required TResult Function(QuoteStateLoading value) loading,
    required TResult Function(QuoteStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(QuoteStateData value)? $default, {
    TResult? Function(QuoteStateLoading value)? loading,
    TResult? Function(QuoteStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(QuoteStateData value)? $default, {
    TResult Function(QuoteStateLoading value)? loading,
    TResult Function(QuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuoteStateLoading implements QuoteState {
  const factory QuoteStateLoading() = _$QuoteStateLoadingImpl;
}

/// @nodoc
abstract class _$$QuoteStateErrorImplCopyWith<$Res> {
  factory _$$QuoteStateErrorImplCopyWith(_$QuoteStateErrorImpl value,
          $Res Function(_$QuoteStateErrorImpl) then) =
      __$$QuoteStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$QuoteStateErrorImplCopyWithImpl<$Res>
    extends _$QuoteStateCopyWithImpl<$Res, _$QuoteStateErrorImpl>
    implements _$$QuoteStateErrorImplCopyWith<$Res> {
  __$$QuoteStateErrorImplCopyWithImpl(
      _$QuoteStateErrorImpl _value, $Res Function(_$QuoteStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$QuoteStateErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$QuoteStateErrorImpl implements QuoteStateError {
  const _$QuoteStateErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'QuoteState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteStateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteStateErrorImplCopyWith<_$QuoteStateErrorImpl> get copyWith =>
      __$$QuoteStateErrorImplCopyWithImpl<_$QuoteStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> quotes) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> quotes)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> quotes)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(QuoteStateData value) $default, {
    required TResult Function(QuoteStateLoading value) loading,
    required TResult Function(QuoteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(QuoteStateData value)? $default, {
    TResult? Function(QuoteStateLoading value)? loading,
    TResult? Function(QuoteStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(QuoteStateData value)? $default, {
    TResult Function(QuoteStateLoading value)? loading,
    TResult Function(QuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuoteStateError implements QuoteState {
  const factory QuoteStateError(final dynamic error) = _$QuoteStateErrorImpl;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$QuoteStateErrorImplCopyWith<_$QuoteStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
