import 'package:dio/dio.dart';

import '../features/auth/utils/helpers.dart';

class User {
  final dio = Dio();

  getUser(String token) async => await dio.get('https://api.github.com/user',
      options: Options(headers: {
        'Authorization': 'token ${getAccessToken(token)}',
        'User-Agent': 'Login-App',
      }));
}
