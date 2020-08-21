# Flutter WebView Demo

WebView is used to display web page in android. The web page can be loaded from same application or URL. Let's take a look at how it works

### Plugin Used
- ```flutter_webview_plugin: ^version``` :point_right: for latest verision [link] (https://pub.dev/packages/flutter_webview_plugin)

- In order for plugin to work correctly, you need to add new key to ```ios/Runner/Info.plist```  

   Key:
   
  ```
  <key>NSAppTransportSecurity</key> 
```
   <dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
    <key>NSAllowsArbitraryLoadsInWebContent</key>
    <true/>
</dict> 
```

(Already in this project) :+1:

  
### Demo

![demo](https://media.giphy.com/media/loeVg2MfKQDd10q8Go/giphy.gif)

Enjoy: :smile: :wink:
