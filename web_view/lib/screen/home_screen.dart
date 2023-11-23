import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai/');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()..loadRequest(homeUrl);

  // final test = WebViewController().loadRequest();
  // => loadRequest()의 실행 값이 반환

  // final controller = WebViewController();
  // => WebViewController()을 반환

  // final result = controller.loadRequest();
  // => loadRequest()의 실행 값을 반환

  // final controller2 = WebViewController()..loadRequest();
  // => loadRequest() 실행 후 WebViewController() 반환

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.loadRequest(homeUrl);
              },
              icon: Icon(
                Icons.home,
              )),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
