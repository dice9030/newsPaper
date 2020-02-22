import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class NewsPaperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CANAL: CNN'),
      ),
      body:  SafeArea(
              child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          height: MediaQuery.of(context).size.height,
          child: WebView(
            initialUrl: 'https://edition.cnn.com/asia/live-news/coronavirus-outbreak-02-22-20-intl-hnk/index.html',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}