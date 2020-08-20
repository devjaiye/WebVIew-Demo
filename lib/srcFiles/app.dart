import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebview_demo/srcFiles/webview_container.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
          child: WebViewContainer()
      ),
    );
  }
}