// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repo _$RepoFromJson(Map<String, dynamic> json) {
  return _Repo.fromJson(json);
}

/// @nodoc
mixin _$Repo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get fork => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get stargazersCount => throw _privateConstructorUsedError;
  int get watchersCount => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoCopyWith<Repo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoCopyWith<$Res> {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) then) =
      _$RepoCopyWithImpl<$Res, Repo>;
  @useResult
  $Res call(
      {int id,
      String name,
      String fullName,
      bool private,
      String? description,
      bool fork,
      String url,
      int stargazersCount,
      int watchersCount,
      String language});
}

/// @nodoc
class _$RepoCopyWithImpl<$Res, $Val extends Repo>
    implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? private = null,
    Object? description = freezed,
    Object? fork = null,
    Object? url = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: null == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepoCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$$_RepoCopyWith(_$_Repo value, $Res Function(_$_Repo) then) =
      __$$_RepoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String fullName,
      bool private,
      String? description,
      bool fork,
      String url,
      int stargazersCount,
      int watchersCount,
      String language});
}

/// @nodoc
class __$$_RepoCopyWithImpl<$Res> extends _$RepoCopyWithImpl<$Res, _$_Repo>
    implements _$$_RepoCopyWith<$Res> {
  __$$_RepoCopyWithImpl(_$_Repo _value, $Res Function(_$_Repo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? private = null,
    Object? description = freezed,
    Object? fork = null,
    Object? url = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = null,
  }) {
    return _then(_$_Repo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: null == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repo implements _Repo {
  const _$_Repo(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.private,
      this.description,
      required this.fork,
      required this.url,
      required this.stargazersCount,
      required this.watchersCount,
      required this.language});

  factory _$_Repo.fromJson(Map<String, dynamic> json) => _$$_RepoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final bool private;
  @override
  final String? description;
  @override
  final bool fork;
  @override
  final String url;
  @override
  final int stargazersCount;
  @override
  final int watchersCount;
  @override
  final String language;

  @override
  String toString() {
    return 'Repo(id: $id, name: $name, fullName: $fullName, private: $private, description: $description, fork: $fork, url: $url, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, private,
      description, fork, url, stargazersCount, watchersCount, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepoCopyWith<_$_Repo> get copyWith =>
      __$$_RepoCopyWithImpl<_$_Repo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepoToJson(
      this,
    );
  }
}

abstract class _Repo implements Repo {
  const factory _Repo(
      {required final int id,
      required final String name,
      required final String fullName,
      required final bool private,
      final String? description,
      required final bool fork,
      required final String url,
      required final int stargazersCount,
      required final int watchersCount,
      required final String language}) = _$_Repo;

  factory _Repo.fromJson(Map<String, dynamic> json) = _$_Repo.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get fullName;
  @override
  bool get private;
  @override
  String? get description;
  @override
  bool get fork;
  @override
  String get url;
  @override
  int get stargazersCount;
  @override
  int get watchersCount;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_RepoCopyWith<_$_Repo> get copyWith => throw _privateConstructorUsedError;
}
