import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<LeftListViewState> buildEffect() {
  return combineEffects(<Object, Effect<LeftListViewState>>{
    LeftListViewAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LeftListViewState> ctx) {
}
