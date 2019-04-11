import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatefulWidget {
  String url; //网站链接
  String title;

  WebViewPage(this.url, this.title); //appBar的标题

  @override
  State<StatefulWidget> createState() {
    return WebViewPageState();
  }
}

class WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: widget.url,
      appBar:
      new AppBar(title: new Text(widget.title),
        actions: <Widget>[
        new PopupMenuButton<String>(itemBuilder: (context) =>
        [
          //todo:为什么会被挡住，只显示一个
          new PopupMenuItem(child: new Text("分享1")),
          new PopupMenuItem(child: new Text("分享2")),

        ]),
        ],),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  Widget child;

  MyAppBar({this.child});

  @override
  _MyAppBarState createState() => new _MyAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(56.0);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    //增加状态栏
    //通过SafeArea可以很容易的避免默认沉浸式
    return new SafeArea(top: true, child: widget.child);
  }
}
