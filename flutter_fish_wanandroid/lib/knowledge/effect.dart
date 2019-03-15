import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';
import 'package:flutter_fish_wanandroid/repository/repository.dart';
import 'action.dart';

Effect<KnowledgePageState> buildEffect() {
  return combineEffects(
      <Object, Effect<KnowledgePageState>>{Lifecycle.initState: _init});
}

_init(Action action, Context<KnowledgePageState> ctx) {
  WanHttpRepository.getKnowLedgeList().then((list) {
    ctx.dispatch(KnowLedgeActionCreator.loadDataAction(list));
  });
}
