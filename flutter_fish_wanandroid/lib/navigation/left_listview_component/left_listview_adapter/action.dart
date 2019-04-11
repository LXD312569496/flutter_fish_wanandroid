import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LeftListViewAction { action }

class LeftListViewActionCreator {
  static Action onAction() {
    return const Action(LeftListViewAction.action);
  }
}
