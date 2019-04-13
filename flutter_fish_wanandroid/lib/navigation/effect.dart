import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter_fish_wanandroid/widget/web_view_page.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter_fish_wanandroid/repository/http_repository.dart';
import 'package:flutter/material.dart';

Effect<NavigationPageState> buildEffect() {
  return combineEffects(<Object, Effect<NavigationPageState>>{
    Lifecycle.initState: _init,
    NavigationPageAction.onGotoWebView: _onGotoWebView
  });
}

void _init(Action action, Context<NavigationPageState> ctx) {
  WanHttpRepository.getNavigationList().then((List<NavigationModel> list) {
    if (!ctx.isDisposed) {
      ctx.dispatch(NavigationPageActionCreator.loadDataAction(list));
    }
  });
}

void _onGotoWebView(Action action, Context<NavigationPageState> ctx) {
  Navigator.of(ctx.context).push(new MaterialPageRoute(builder: (context) {
    ArticleModel article = action.payload;
    return WebViewPage(article.link, article.title);
  }));
}
