import 'package:fish_redux/fish_redux.dart';
import 'state.dart';

Effect<MainPageState> buildEffect() {
  return combineEffects(<Object,Effect<MainPageState>>{
    Lifecycle.initState:_init,
  });
}

void _init(Action action,Context<MainPageState> ctx){

}