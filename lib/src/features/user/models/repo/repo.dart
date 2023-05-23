import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    required int id,
    required String name,
    required String fullName,
    required bool private,
    String? description,
    required bool fork,
    required String url,
    required int stargazersCount,
    required int watchersCount,
    required String language,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
