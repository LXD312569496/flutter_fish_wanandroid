import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'package:flutter_fish_wanandroid/navigation/action.dart';

Effect<RightListViewComponentState> buildEffect() {
  return combineEffects(<Object, Effect<RightListViewComponentState>>{
  Lifecycle.initState: _init,
  NavigationPageAction.onClickLeftItem:_onClickLeftItem
  });
}


void _init(Action action, Context<RightListViewComponentState> ctx) {
  ctx.state.scrollController.addListener(() {
      print("${ctx.state.scrollController.startIndex}");
      print("${ctx.state.scrollController.position}");

  });
}

void _onClickLeftItem(Action action, Context<RightListViewComponentState> ctx) {
  print("右边的listview收到消息：左边的listview点击了:${action.payload}");
  ctx.state.scrollController.animateToIndex(action.payload);
}