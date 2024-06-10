import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CricketScore extends StatefulWidget {
  const CricketScore({super.key});

  @override
  State<CricketScore> createState() => _CricketScoreState();
}

class _CricketScoreState extends State<CricketScore> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://www.cricbuzz.com/cricket-match/live-scores'),
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
          'Cricket Score',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6849ef),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
