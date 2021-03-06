import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum NavigationPageAction { loadData, onGotoWebView, onClickLeftItem }

class NavigationPageActionCreator {
  static Action loadDataAction(List<NavigationModel> list) {
    return Action(NavigationPageAction.loadData, payload: list);
  }

  static Action onGotoWebViewAction(ArticleModel model) {
    return Action(NavigationPageAction.onGotoWebView, payload: model);
  }

  static Action onClickLeftItemAction(int position) {
    return Action(NavigationPageAction.onClickLeftItem, payload: position);
  }
}
