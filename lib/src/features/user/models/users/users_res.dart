import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../api/user.dart';

part 'users_res.freezed.dart';
part 'users_res.g.dart';

@freezed
class UsersRes with _$UsersRes {
  const factory UsersRes({
    required int totalCount,
    required bool incompleteResults,
    required List<dynamic> items,
  }) = _UsersRes;

  factory UsersRes.fromJson(Map<String, dynamic> json) =>
      _$UsersResFromJson(json);
}
