import 'package:fish_redux/fish_redux.dart';

/**
 * on开头是effect的action，没on开头是reducer的action
 */
enum HomePageAction { onLoadData, loadData }

class HomePageActionCreator {
  static Action onLoadDataAction(int page) {
    return new Action(HomePageAction.onLoadData, payload: page);
  }

  static Action loadDataAction() {
    return new Action(HomePageAction.loadData);
  }
}
