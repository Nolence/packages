// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DocumentTearOff {
  const _$DocumentTearOff();

  _Document<T> call<T extends Object?>(
      {required DocumentReference<T> reference, required T data}) {
    return _Document<T>(
      reference: reference,
      data: data,
    );
  }
}

/// @nodoc
const $Document = _$DocumentTearOff();

/// @nodoc
mixin _$Document<T extends Object?> {
  DocumentReference<T> get reference => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentCopyWith<T, Document<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<T extends Object?, $Res> {
  factory $DocumentCopyWith(
          Document<T> value, $Res Function(Document<T>) then) =
      _$DocumentCopyWithImpl<T, $Res>;
  $Res call({DocumentReference<T> reference, T data});
}

/// @nodoc
class _$DocumentCopyWithImpl<T extends Object?, $Res>
    implements $DocumentCopyWith<T, $Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  final Document<T> _value;
  // ignore: unused_field
  final $Res Function(Document<T>) _then;

  @override
  $Res call({
    Object? reference = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<T>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$DocumentCopyWith<T extends Object?, $Res>
    implements $DocumentCopyWith<T, $Res> {
  factory _$DocumentCopyWith(
          _Document<T> value, $Res Function(_Document<T>) then) =
      __$DocumentCopyWithImpl<T, $Res>;
  @override
  $Res call({DocumentReference<T> reference, T data});
}

/// @nodoc
class __$DocumentCopyWithImpl<T extends Object?, $Res>
    extends _$DocumentCopyWithImpl<T, $Res>
    implements _$DocumentCopyWith<T, $Res> {
  __$DocumentCopyWithImpl(
      _Document<T> _value, $Res Function(_Document<T>) _then)
      : super(_value, (v) => _then(v as _Document<T>));

  @override
  _Document<T> get _value => super._value as _Document<T>;

  @override
  $Res call({
    Object? reference = freezed,
    Object? data = freezed,
  }) {
    return _then(_Document<T>(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<T>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Document<T extends Object?> extends _Document<T> {
  const _$_Document({required this.reference, required this.data}) : super._();

  @override
  final DocumentReference<T> reference;
  @override
  final T data;

  @override
  String toString() {
    return 'Document<$T>(reference: $reference, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Document<T> &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$DocumentCopyWith<T, _Document<T>> get copyWith =>
      __$DocumentCopyWithImpl<T, _Document<T>>(this, _$identity);
}

abstract class _Document<T extends Object?> extends Document<T> {
  const factory _Document(
      {required DocumentReference<T> reference,
      required T data}) = _$_Document<T>;
  const _Document._() : super._();

  @override
  DocumentReference<T> get reference => throw _privateConstructorUsedError;
  @override
  T get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DocumentCopyWith<T, _Document<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
