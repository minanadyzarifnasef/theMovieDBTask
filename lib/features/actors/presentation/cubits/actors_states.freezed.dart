// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actors_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActorsStates<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ActorsStates<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ActorsStates<$T>()';
  }
}

/// @nodoc
class $ActorsStatesCopyWith<T, $Res> {
  $ActorsStatesCopyWith(ActorsStates<T> _, $Res Function(ActorsStates<T>) __);
}

/// Adds pattern-matching-related methods to [ActorsStates].
extension ActorsStatesPatterns<T> on ActorsStates<T> {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingActorsStates<T> value)? loading,
    TResult Function(EmptyActorsStates<T> value)? emptyInput,
    TResult Function(SuccessActorsStates<T> value)? success,
    TResult Function(ErrorActorsStates<T> value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingActorsStates() when loading != null:
        return loading(_that);
      case EmptyActorsStates() when emptyInput != null:
        return emptyInput(_that);
      case SuccessActorsStates() when success != null:
        return success(_that);
      case ErrorActorsStates() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingActorsStates<T> value) loading,
    required TResult Function(EmptyActorsStates<T> value) emptyInput,
    required TResult Function(SuccessActorsStates<T> value) success,
    required TResult Function(ErrorActorsStates<T> value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case LoadingActorsStates():
        return loading(_that);
      case EmptyActorsStates():
        return emptyInput(_that);
      case SuccessActorsStates():
        return success(_that);
      case ErrorActorsStates():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingActorsStates<T> value)? loading,
    TResult? Function(EmptyActorsStates<T> value)? emptyInput,
    TResult? Function(SuccessActorsStates<T> value)? success,
    TResult? Function(ErrorActorsStates<T> value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingActorsStates() when loading != null:
        return loading(_that);
      case EmptyActorsStates() when emptyInput != null:
        return emptyInput(_that);
      case SuccessActorsStates() when success != null:
        return success(_that);
      case ErrorActorsStates() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyInput,
    TResult Function(T response, bool isLoadingMore)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingActorsStates() when loading != null:
        return loading();
      case EmptyActorsStates() when emptyInput != null:
        return emptyInput();
      case SuccessActorsStates() when success != null:
        return success(_that.response, _that.isLoadingMore);
      case ErrorActorsStates() when error != null:
        return error(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyInput,
    required TResult Function(T response, bool isLoadingMore) success,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingActorsStates():
        return loading();
      case EmptyActorsStates():
        return emptyInput();
      case SuccessActorsStates():
        return success(_that.response, _that.isLoadingMore);
      case ErrorActorsStates():
        return error(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? emptyInput,
    TResult? Function(T response, bool isLoadingMore)? success,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingActorsStates() when loading != null:
        return loading();
      case EmptyActorsStates() when emptyInput != null:
        return emptyInput();
      case SuccessActorsStates() when success != null:
        return success(_that.response, _that.isLoadingMore);
      case ErrorActorsStates() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial<T> implements ActorsStates<T> {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ActorsStates<$T>.initial()';
  }
}

/// @nodoc

class LoadingActorsStates<T> implements ActorsStates<T> {
  const LoadingActorsStates();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingActorsStates<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ActorsStates<$T>.loading()';
  }
}

/// @nodoc

class EmptyActorsStates<T> implements ActorsStates<T> {
  const EmptyActorsStates();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyActorsStates<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ActorsStates<$T>.emptyInput()';
  }
}

/// @nodoc

class SuccessActorsStates<T> implements ActorsStates<T> {
  const SuccessActorsStates(this.response, {this.isLoadingMore = false});

  final T response;
  @JsonKey()
  final bool isLoadingMore;

  /// Create a copy of ActorsStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessActorsStatesCopyWith<T, SuccessActorsStates<T>> get copyWith =>
      _$SuccessActorsStatesCopyWithImpl<T, SuccessActorsStates<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessActorsStates<T> &&
            const DeepCollectionEquality().equals(other.response, response) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(response), isLoadingMore);

  @override
  String toString() {
    return 'ActorsStates<$T>.success(response: $response, isLoadingMore: $isLoadingMore)';
  }
}

/// @nodoc
abstract mixin class $SuccessActorsStatesCopyWith<T, $Res>
    implements $ActorsStatesCopyWith<T, $Res> {
  factory $SuccessActorsStatesCopyWith(SuccessActorsStates<T> value,
          $Res Function(SuccessActorsStates<T>) _then) =
      _$SuccessActorsStatesCopyWithImpl;
  @useResult
  $Res call({T response, bool isLoadingMore});
}

/// @nodoc
class _$SuccessActorsStatesCopyWithImpl<T, $Res>
    implements $SuccessActorsStatesCopyWith<T, $Res> {
  _$SuccessActorsStatesCopyWithImpl(this._self, this._then);

  final SuccessActorsStates<T> _self;
  final $Res Function(SuccessActorsStates<T>) _then;

  /// Create a copy of ActorsStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = freezed,
    Object? isLoadingMore = null,
  }) {
    return _then(SuccessActorsStates<T>(
      freezed == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as T,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class ErrorActorsStates<T> implements ActorsStates<T> {
  const ErrorActorsStates({required this.message});

  final String message;

  /// Create a copy of ActorsStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorActorsStatesCopyWith<T, ErrorActorsStates<T>> get copyWith =>
      _$ErrorActorsStatesCopyWithImpl<T, ErrorActorsStates<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorActorsStates<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ActorsStates<$T>.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorActorsStatesCopyWith<T, $Res>
    implements $ActorsStatesCopyWith<T, $Res> {
  factory $ErrorActorsStatesCopyWith(ErrorActorsStates<T> value,
          $Res Function(ErrorActorsStates<T>) _then) =
      _$ErrorActorsStatesCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorActorsStatesCopyWithImpl<T, $Res>
    implements $ErrorActorsStatesCopyWith<T, $Res> {
  _$ErrorActorsStatesCopyWithImpl(this._self, this._then);

  final ErrorActorsStates<T> _self;
  final $Res Function(ErrorActorsStates<T>) _then;

  /// Create a copy of ActorsStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ErrorActorsStates<T>(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
