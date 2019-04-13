import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'package:flutter_fish_wanandroid/repository/http_repository.dart';
import 'action.dart';

Effect<ProjectState> buildEffect() {
  return combineEffects(
      <Object, Effect<ProjectState>>{Lifecycle.initState: _init});
}

void _init(Action action, Context<ProjectState> ctx) {
  //获取项目分类数据
  WanHttpRepository.getProjectClassify().then((list) {
    if (!ctx.isDisposed) {
      ctx.dispatch(ProjectActionCreator.loadClassifyDataAction(list));
    }
  });
}
