import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'state.dart';
import 'action.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildView(DrawerPageState state, dispatch, ViewService viewService) {
  return new ListView(
    children: <Widget>[
      new UserAccountsDrawerHeader(
        accountName: new Text("入魔的冬瓜"),
        accountEmail: null,
        currentAccountPicture: new ClipOval(
          child: new Image(
            image: new AssetImage("assets/default_head.jpg"),
            width: 200,
            height: 200,
          ),
        ),
      ),
      new ListTile(
        title: new Text("收藏"),
        leading: new Icon(Icons.favorite),
        onTap: () {
          dispatch(DrawerActionCreator.clickCollectAction());
        },
      ),
      new ListTile(
        title: new Text("TODO工具"),
        leading: new Icon(Icons.favorite),
        onTap: () {
          dispatch(DrawerActionCreator.clickTodoAction());
        },
      ),
      new ListTile(
        title: new Text("夜间模式"),
        leading: new Icon(Icons.favorite),
        onTap: () {
          dispatch(DrawerActionCreator.clickNightAction());
        },
      ),
      new ListTile(
        title: new Text("设置"),
        leading: new Icon(Icons.favorite),
        onTap: () {
          dispatch(DrawerActionCreator.clickSettingAction());
        },
      ),
      new ListTile(
        title: new Text("关于我们"),
        leading: new Icon(Icons.alarm),
        onTap: () {
          dispatch(DrawerActionCreator.clickAboutAction());
        },
      ),
      new ListTile(
        title: new Text("退出登录"),
        leading: new Icon(FontAwesomeIcons.windowClose),
        onTap: () {
          dispatch(DrawerActionCreator.clickExitAction());
        },
      ),
    ],
  );
}
