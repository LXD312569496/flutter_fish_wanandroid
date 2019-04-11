import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum RightListViewItemComponentAction { action }

class RightListViewItemComponentActionCreator {
  static Action onAction() {
    return const Action(RightListViewItemComponentAction.action);
  }
}
