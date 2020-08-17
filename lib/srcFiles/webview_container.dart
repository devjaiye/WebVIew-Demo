import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewContainer extends StatefulWidget {
  final url;
  final title;
  WebViewContainer(this.url,this.title);

  @override
  _WebViewContainerState createState() => _WebViewContainerState(url, title);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  var _title;
  final _key = UniqueKey();
  _WebViewContainerState(this._url,this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("My Webview")),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
            ),

          ),
        ],
      ),
//      WebViewController _controller;
//      WebView(
//      initialUrl: 'https://blog.mindorks.com',
//      onWebViewCreated: (WebViewController webViewController) {
//        _controller = webViewController;
//      },
//    );
////...After some operations:
//    _controller.loadUrl('https://mindorks.com');
    );
  }
}
