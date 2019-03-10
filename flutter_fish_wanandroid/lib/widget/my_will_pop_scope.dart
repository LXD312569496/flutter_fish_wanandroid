import 'package:flutter/material.dart';

/** 监听返回按钮
 * 场景：一般情况下，Android按一次返回键的话，就会退出所在的界面，所以有时候需要监听返回键的事件进行判断
 * 用法：在最外层包裹一个WillPopScope控件，并注册一个onWillPop的回调来判断是否真的要退出应用
 * 注意：onWillPop的返回值是一个Future<bool>的值
 * 返回 Future.value(false); 表示不退出.
    返回 Future.value(true); 表示退出.
 */
class MyWillPopScope extends StatelessWidget {
  final Widget child;

  const MyWillPopScope({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        child: child,
        onWillPop: () {
          return onBackPressed(context);
        });
  }

  Future<bool> onBackPressed(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text("是否退出应用程序"),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("确认")),
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text("取消")),
            ],
          );
        });
  }
}
