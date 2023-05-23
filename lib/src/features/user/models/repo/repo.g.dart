// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repo _$$_RepoFromJson(Map<String, dynamic> json) => _$_Repo(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      private: json['private'] as bool,
      description: json['description'] as String?,
      fork: json['fork'] as bool,
      url: json['url'] as String,
      stargazersCount: json['stargazersCount'] as int,
      watchersCount: json['watchersCount'] as int,
      language: json['language'] as String,
    );

Map<String, dynamic> _$$_RepoToJson(_$_Repo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'private': instance.private,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'stargazersCount': instance.stargazersCount,
      'watchersCount': instance.watchersCount,
      'language': instance.language,
    };
