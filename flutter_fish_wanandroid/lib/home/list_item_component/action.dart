import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum ArticleListItemAction { onGotoWebView }

class ArticleListItemActionCreator {
  static Action onGotoWebViewAction(ArticleModel model) {
    return Action(ArticleListItemAction.onGotoWebView, payload: model);
  }
}
