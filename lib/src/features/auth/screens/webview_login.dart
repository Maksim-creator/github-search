import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/repositories/auth_repo.dart';
import 'package:github_users/src/utils/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewLogin extends StatelessWidget {
  const WebViewLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {
            Get.showSnackbar(GetSnackBar(
              title: 'Something wents wrong.',
              message: '${error.description} Try again later.',
              duration: const Duration(seconds: 2),
            ));
            Get.back();
          },
          onNavigationRequest: (NavigationRequest request) async {
            if (request.url.startsWith(Constants.redirectUri)) {
              final Uri uri = Uri.parse(request.url);
              final String? code = uri.queryParameters['code'];
              if (code != null) {
                await AuthRepo().authorizeUser(code);
              }
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(
          'https://github.com/login/oauth/authorize?client_id=${Constants.clientId}&scope=repo'));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }
}
