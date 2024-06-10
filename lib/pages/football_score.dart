import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FootballScore extends StatefulWidget {
  const FootballScore({super.key});

  @override
  State<FootballScore> createState() => _FootballScoreState();
}

class _FootballScoreState extends State<FootballScore> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://www.goal.com/en-in/live-scores'),
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
          'Football',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6849ef),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
