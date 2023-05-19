import 'package:dio/dio.dart';

import '../utils/constants.dart';

class Auth {
  final dio = Dio();

  getAccessToken(String code) async {
    return await dio.post('https://github.com/login/oauth/access_token', data: {
      "code": code,
      "client_id": Constants.clientId,
      "client_secret": Constants.clientSecret,
      "redirect_uri": Constants.redirectUri
    });
  }
}
