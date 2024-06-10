import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MmaUpdate extends StatefulWidget {
  const MmaUpdate({super.key});

  @override
  State<MmaUpdate> createState() => _MmaUpdateState();
}

class _MmaUpdateState extends State<MmaUpdate> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://www.ufc.com/'),
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
          'MMA Update',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff6849ef),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
