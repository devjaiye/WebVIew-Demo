import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

final flutterWebViewPlugin = new FlutterWebviewPlugin();

final makeBottom = Container(
  height: 55.0,
  child: BottomAppBar(
    color:Colors.teal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(4.0),
                color: Colors.white24,
              ),
              child:  FlatButton.icon(
                onPressed: () => flutterWebViewPlugin.reload(),
                icon: Icon(Icons.refresh),
                label: Text("Refresh"),),
            ),

        Container(
            decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(4.0),
              color: Colors.white24,
        ),
        child: FlatButton.icon(
            onPressed: () => flutterWebViewPlugin.goBack(),
            icon: Icon(Icons.arrow_back),
            label: Text("Back")),
        ),

        Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(4.0),
              color: Colors.white24,
            ),
            child: FlatButton.icon(
              onPressed: () => flutterWebViewPlugin.goForward(),
              icon: Icon(Icons.arrow_forward),
              label: Text("Forward"),
            )),

       /*
        FlatButton.icon(
            onPressed: () => flutterWebViewPlugin.stopLoading(),
            icon: Icon(Icons.stop),
            label: Text("Stop")), */

      ],
    ),
  ),
);