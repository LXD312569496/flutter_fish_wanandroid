import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter_fish_wanandroid/repository/http_repository.dart';

Effect<NavigationPageState> buildEffect() {
  return combineEffects(<Object, Effect<NavigationPageState>>{
    Lifecycle.initState:_init
  });
}


void _init(Action action, Context<NavigationPageState> ctx) {
  WanHttpRepository.getNavigationList()
      .then((List<NavigationModel> list){
        ctx.dispatch(NavigationPageActionCreator.loadDataAction(list));
  });
}