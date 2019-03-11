import 'package:fish_redux/fish_redux.dart';

enum DrawerAction {
  onClickCollect, //点击收藏
  onClickTodo, //点击todo工具
  onClickNight, //点击夜间模式
  onClickSetting, //点击设置
  onClickAbout, //点击关于我们
  onClickExit, //点击退出登录
}

class DrawerActionCreator {
  static Action clickCollectAction() {
    return new Action(DrawerAction.onClickCollect);
  }

  static Action clickTodoAction() {
    return new Action(DrawerAction.onClickTodo);
  }

  static Action clickNightAction() {
    return new Action(DrawerAction.onClickNight);
  }

  static Action clickSettingAction() {
    return new Action(DrawerAction.onClickSetting);
  }

  static Action clickAboutAction() {
    return new Action(DrawerAction.onClickAbout);
  }

  static Action clickExitAction() {
    return new Action(DrawerAction.onClickExit);
  }
}
