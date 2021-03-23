import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

final clientId = "69c3448cf52920b";
final clientSecret = "7109f60b96d1b7ba9c967ba2d142d8a58e933e9e";
final authorizationUrl = Uri.parse(
    'https://api.imgur.com/oauth2/authorize?client_id=$clientId&response_type=token');
final tokenEndpoint = Uri.parse('https://api.imgur.com/oauth2/token');
final redirectUrl = 'http://localhost:50565/oauth2/callback';

class Session {
  static String accessToken = null;
}

Widget displayWiew() {
  return WebView(
    javascriptMode: JavascriptMode.unrestricted,
    initialUrl: authorizationUrl.toString(),
    navigationDelegate: (navReq) {
      print(navReq.url);
      if (navReq.url.startsWith(redirectUrl)) {
        var responseUrl = Uri.parse(navReq.url);
        print("mec2");
        Map<String, String> res = Map();
        responseUrl.fragment.split('&').forEach((e) {
          final v = e.split("=");
          res.addAll({v[0]: v[1]});
        });
        print("mec");
        print(res);
        Session.accessToken = res["access_token"];
        return NavigationDecision.prevent;
      }
      return NavigationDecision.navigate;
    },
  );
}
