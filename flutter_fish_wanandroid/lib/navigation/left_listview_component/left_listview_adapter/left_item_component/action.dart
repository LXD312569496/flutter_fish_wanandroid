import 'package:fish_redux/fish_redux.dart';

enum LeftItemAction { onClickLeftItem }

class LeftItemActionCreator {
  static Action onClickLeftItemAction(int position) {
    return  Action(LeftItemAction.onClickLeftItem,payload: position);
  }

}
