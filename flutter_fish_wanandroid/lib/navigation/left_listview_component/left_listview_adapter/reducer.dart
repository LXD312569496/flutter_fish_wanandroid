import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LeftListViewState> buildReducer() {
  return asReducer(
    <Object, Reducer<LeftListViewState>>{
      LeftListViewAction.action: _onAction,
    },
  );
}

LeftListViewState _onAction(LeftListViewState state, Action action) {
  final LeftListViewState newState = state.clone();
  return newState;
}
