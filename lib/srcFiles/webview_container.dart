import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutterwebview_demo/srcFiles/bottomnav.dart';



class WebViewContainer extends StatefulWidget {

  @override
  _WebViewContainerState createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {

  String url = "https://github.com/dayojaiye74";

  final flutterWebViewPlugin = new FlutterWebviewPlugin();

  StreamSubscription<WebViewStateChanged> _onChanged; //check if url is loaded or not

  @override
  void initState() {
    super.initState();
    _onChanged = flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged stateChanged) {
     if (mounted){
       if(stateChanged.type == WebViewState.finishLoad){
         //...if load is successful....
         Center(
           child: Text("Successful..."),
         );
       } else if (stateChanged.type == WebViewState.abortLoad){
         //...if there is a problem loading....
         Center(
           child: Text("There is a problem..."),
         );
       } else if (stateChanged.type == WebViewState.startLoad){
         Center(
           child: Text("Loading..."),
         );
       }
     }
    });
  }

    @override
  void dispose() {
    super.dispose();
    flutterWebViewPlugin.dispose(); //...to avoid any webview leaks
  }

    @override
  Widget build(BuildContext context) {
      return WebviewScaffold(
        appBar: AppBar(title: Text("WebView Demo"),
        backgroundColor: Colors.teal,),
        url: url,
      withJavascript: true,
        withZoom: false,
        hidden: true, //...put it true if you want to show CircularProgressIndicator while waiting for the page to load
        bottomNavigationBar: makeBottom,
          initialChild: Container( // but if you want to add your own waiting widget just add InitialChild
            color: Colors.white,
            child: const Center(
              child: Text('waiting...'),
            ),)
      );
  }
}

