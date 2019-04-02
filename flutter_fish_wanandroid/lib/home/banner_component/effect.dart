import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/banner_component/state.dart';

Effect<BannerState> buildEffect() {
  return combineEffects(<Object, Effect<BannerState>>{
    Lifecycle.initState: _init,
    Lifecycle.dispose: _dispose
  });
}

void _init(Action action, Context<BannerState> ctx) {}

void _dispose(Action action, Context<BannerState> ctx) {
  if(ctx.state.timer!=null){
    ctx.state.timer.cancel();
    ctx.state.timer = null;
  }
  ctx.state.pageController.dispose();
}
