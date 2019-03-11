import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'action.dart';
import 'package:flutter/material.dart';

Effect<DrawerPageState> buildEffect() {
  return combineEffects(<Object, Effect<DrawerPageState>>{
    Lifecycle.initState: _init,
    DrawerAction.onClickCollect: _clickCollect,
    DrawerAction.onClickTodo: _clickTodo,
    DrawerAction.onClickNight: _clickNight,
    DrawerAction.onClickSetting: _clickSetting,
    DrawerAction.onClickAbout: _clickAbout,
    DrawerAction.onClickExit: _clickExit
  });
}

void _init(Action action, Context<DrawerPageState> ctx) {}

void _clickCollect(Action action, Context<DrawerPageState> ctx) {
  Scaffold.of(ctx.context)
      .showSnackBar(new SnackBar(content: new Text("点击收藏按钮")));
}

void _clickTodo(Action action, Context<DrawerPageState> ctx) {
  Scaffold.of(ctx.context)
      .showSnackBar(new SnackBar(content: new Text("点击TODO按钮")));
}

void _clickNight(Action action, Context<DrawerPageState> ctx) {
  Scaffold.of(ctx.context)
      .showSnackBar(new SnackBar(content: new Text("点击夜间模式按钮")));
}

void _clickSetting(Action action, Context<DrawerPageState> ctx) {
  Scaffold.of(ctx.context)
      .showSnackBar(new SnackBar(content: new Text("点击设置按钮")));
}

void _clickAbout(Action action, Context<DrawerPageState> ctx) {
  Scaffold.of(ctx.context)
      .showSnackBar(new SnackBar(content: new Text("点击关于按钮")));
}

void _clickExit(Action action, Context<DrawerPageState> ctx) {
  Scaffold.of(ctx.context)
      .showSnackBar(new SnackBar(content: new Text("点击退出按钮")));
}
