import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<LeftItemState> buildEffect() {
  return combineEffects(<Object, Effect<LeftItemState>>{
    LeftItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LeftItemState> ctx) {
}
