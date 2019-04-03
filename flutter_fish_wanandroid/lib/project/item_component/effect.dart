import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter_fish_wanandroid/repository/http_repository.dart';
import 'action.dart';
import 'state.dart';

Effect<ProjectChildPageState> buildEffect() {
  return combineEffects(<Object,Effect<ProjectChildPageState>>{
  Lifecycle.initState:_init
  });
}


_init(Action action, Context<ProjectChildPageState> ctx) {
  WanHttpRepository.getProjectList(ctx.state.cid).then((list) {
    ctx.dispatch(ProjectChildPageActionCreator.loadDataAction(list));
  });
}