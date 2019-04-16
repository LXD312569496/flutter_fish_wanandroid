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
    if (!ctx.isDisposed) {
      ctx.dispatch(HomePageActionCreator.loadBannerDataAction(list));
    }
  });

  WanHttpRepository.getHomeArticleList(page: ctx.state.currentPage++)
      .then((list) {
    if (!ctx.isDisposed) {
      ctx.dispatch(HomePageActionCreator.loadArticleDataAction(list));
    }
  });

  ctx.state.scrollController.addListener(() {
    if (ctx.state.scrollController.position.pixels >=
        ctx.state.scrollController.position.maxScrollExtent - 100) {
      if (!ctx.state.isLoading) {
        ctx.state.isLoading = true;
        //进行loadmore操作
        WanHttpRepository.getHomeArticleList(page: ctx.state.currentPage++)
            .then((list) {
          ctx.state.isLoading = false;
          if (!ctx.isDisposed) {
            ctx.dispatch(HomePageActionCreator.loadArticleDataAction(list));
          }
        });
      }
    }
  });
}
