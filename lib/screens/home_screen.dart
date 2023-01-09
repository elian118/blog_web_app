import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController?
      controller; // 생성자로 접근할 수 없는 멤버 변수, WebView.onWebViewCreated() 전용

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.loadUrl('https://blog.codefactory.ai');
              }
            },
            icon: const Icon(Icons.home),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
