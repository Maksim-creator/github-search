import 'package:dio/dio.dart';
import 'package:github_users/src/features/user/models/users/users_res.dart';

import '../features/auth/utils/helpers.dart';

class User {
  final dio = Dio();

  getUser(String token) async => await dio.get('https://api.github.com/user',
      options: Options(headers: {
        'Authorization': 'token ${getAccessToken(token)}',
        'User-Agent': 'Login-App',
      }));

  Future<Response<List<dynamic>>> getRepositories(String username) async =>
      await dio.get('https://api.github.com/users/$username/repos');

  Future<Response<Map<String, dynamic>>> getUsersByUsername(
          String username, int rowsPerPage, int page) async =>
      await dio.get(
          'https://api.github.com/search/users?q=$username&per_page=$rowsPerPage&page=$page');
}
