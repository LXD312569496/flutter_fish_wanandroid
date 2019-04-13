import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/navigation/action.dart';
import 'action.dart';
import 'state.dart';

Effect<LeftItemState> buildEffect() {
  return combineEffects(<Object, Effect<LeftItemState>>{
    LeftItemAction.onClickLeftItem: _onAction,
  });
}

void _onAction(Action action, Context<LeftItemState> ctx) {
  print("左边listview被点击，发送通知");
  ctx.pageBroadcast(
      NavigationPageActionCreator.onClickLeftItemAction(action.payload));
}
