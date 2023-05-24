// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersRes _$UsersResFromJson(Map<String, dynamic> json) {
  return _UsersRes.fromJson(json);
}

/// @nodoc
mixin _$UsersRes {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<dynamic> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersResCopyWith<UsersRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResCopyWith<$Res> {
  factory $UsersResCopyWith(UsersRes value, $Res Function(UsersRes) then) =
      _$UsersResCopyWithImpl<$Res, UsersRes>;
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<dynamic> items});
}

/// @nodoc
class _$UsersResCopyWithImpl<$Res, $Val extends UsersRes>
    implements $UsersResCopyWith<$Res> {
  _$UsersResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersResCopyWith<$Res> implements $UsersResCopyWith<$Res> {
  factory _$$_UsersResCopyWith(
          _$_UsersRes value, $Res Function(_$_UsersRes) then) =
      __$$_UsersResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<dynamic> items});
}

/// @nodoc
class __$$_UsersResCopyWithImpl<$Res>
    extends _$UsersResCopyWithImpl<$Res, _$_UsersRes>
    implements _$$_UsersResCopyWith<$Res> {
  __$$_UsersResCopyWithImpl(
      _$_UsersRes _value, $Res Function(_$_UsersRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$_UsersRes(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersRes implements _UsersRes {
  const _$_UsersRes(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<dynamic> items})
      : _items = items;

  factory _$_UsersRes.fromJson(Map<String, dynamic> json) =>
      _$$_UsersResFromJson(json);

  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  final List<dynamic> _items;
  @override
  List<dynamic> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'UsersRes(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersRes &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersResCopyWith<_$_UsersRes> get copyWith =>
      __$$_UsersResCopyWithImpl<_$_UsersRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersResToJson(
      this,
    );
  }
}

abstract class _UsersRes implements UsersRes {
  const factory _UsersRes(
      {required final int totalCount,
      required final bool incompleteResults,
      required final List<dynamic> items}) = _$_UsersRes;

  factory _UsersRes.fromJson(Map<String, dynamic> json) = _$_UsersRes.fromJson;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<dynamic> get items;
  @override
  @JsonKey(ignore: true)
  _$$_UsersResCopyWith<_$_UsersRes> get copyWith =>
      throw _privateConstructorUsedError;
}
