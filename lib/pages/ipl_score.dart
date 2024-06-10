import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IplScore extends StatefulWidget {
  const IplScore({super.key});

  @override
  State<IplScore> createState() => _IplScoreState();
}

class _IplScoreState extends State<IplScore> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://sportstar.thehindu.com/cricket/ipl/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text(
          'Cricket IPL',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6849ef),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
