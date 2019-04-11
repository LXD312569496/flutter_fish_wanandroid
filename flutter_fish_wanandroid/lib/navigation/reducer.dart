import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NavigationPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<NavigationPageState>>{
      NavigationPageAction.loadData: _onAction,
    },
  );
}

NavigationPageState _onAction(NavigationPageState state, Action action) {
  final NavigationPageState newState = state.clone();
  newState.list=action.payload;
  print("_onAction:${newState.list.length}");
  return newState;
}
