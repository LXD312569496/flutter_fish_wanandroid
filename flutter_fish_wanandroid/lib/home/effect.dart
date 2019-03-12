import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'package:flutter_fish_wanandroid/repository/repository.dart';
import 'action.dart';

Effect<HomePageState> buildEffect() {
  return combineEffects(
      <Object, Effect<HomePageState>>{Lifecycle.initState: _init});
}

void _init(Action action, Context<HomePageState> ctx) async {
  //获取banner的操作
  WanHttpRepository.getBannerList().then((list) {
    ctx.dispatch(HomePageActionCreator.loadBannerDataAction(list));
  });

  WanHttpRepository.getHomeArticleList().then((list) {
    ctx.dispatch(HomePageActionCreator.loadArticleDataAction(list));
  });
}
