// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      login: json['login'] as String?,
      id: json['id'] as int?,
      avatarUrl: json['avatarUrl'] as String?,
      url: json['url'] as String?,
      followersUrl: json['followersUrl'] as String?,
      followingUrl: json['followingUrl'] as String?,
      reposUrl: json['reposUrl'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      bio: json['bio'] as String?,
      publicRepos: json['publicRepos'] as int?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
      'url': instance.url,
      'followersUrl': instance.followersUrl,
      'followingUrl': instance.followingUrl,
      'reposUrl': instance.reposUrl,
      'type': instance.type,
      'name': instance.name,
      'location': instance.location,
      'bio': instance.bio,
      'publicRepos': instance.publicRepos,
      'followers': instance.followers,
      'following': instance.following,
    };
