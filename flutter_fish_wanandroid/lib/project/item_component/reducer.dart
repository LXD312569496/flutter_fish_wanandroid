import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'action.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

Reducer<ProjectChildPageState> buildReducer() {
  return asReducer(<Object, Reducer<ProjectChildPageState>>{
    ProjectChildPageAction.loadData: loadData
  });
}

ProjectChildPageState loadData(ProjectChildPageState state, Action action) {
  ProjectChildPageState newState = state.clone();

  List<ArticleModel> list = action.payload;

  newState.list = list;

  return newState;
}
