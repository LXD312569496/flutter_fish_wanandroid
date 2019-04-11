import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LeftItemAction { action }

class LeftItemActionCreator {
  static Action onAction() {
    return const Action(LeftItemAction.action);
  }
}
