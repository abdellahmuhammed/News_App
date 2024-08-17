import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  WebViewScreen({super.key, required this.url});

  final WebViewController controller = WebViewController();
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: WebViewWidget(
        controller: controller
          ..loadRequest(
            Uri.parse(url),
          ),
      ),
    );
  }
}
