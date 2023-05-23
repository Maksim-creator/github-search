import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? login,
    int? id,
    String? avatarUrl,
    String? url,
    String? followersUrl,
    String? followingUrl,
    String? reposUrl,
    String? type,
    String? name,
    String? location,
    String? bio,
    int? publicRepos,
    int? followers,
    int? following,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
