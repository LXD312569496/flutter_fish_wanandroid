import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum RightListViewAdapterAction { action }

class RightListViewAdapterActionCreator {
  static Action onAction() {
    return const Action(RightListViewAdapterAction.action);
  }
}
