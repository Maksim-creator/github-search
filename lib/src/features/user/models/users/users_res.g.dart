// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersRes _$$_UsersResFromJson(Map<String, dynamic> json) => _$_UsersRes(
      totalCount: json['totalCount'] as int,
      incompleteResults: json['incompleteResults'] as bool,
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$$_UsersResToJson(_$_UsersRes instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'incompleteResults': instance.incompleteResults,
      'items': instance.items,
    };
