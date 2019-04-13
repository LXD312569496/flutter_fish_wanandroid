import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter_fish_wanandroid/widget/web_view_page.dart';
import 'action.dart';

Effect<ArticleModel> buildEffect() {
  return combineEffects(<Object, Effect<ArticleModel>>{
    ArticleListItemAction.onGotoWebView: _onGotoWebView
  });
}

void _onGotoWebView(Action action, Context<ArticleModel> ctx) {
  Navigator.of(ctx.context).push(new MaterialPageRoute(builder: (context) {
    ArticleModel article = action.payload;
    return WebViewPage(article.link, article.title);
  }));
}
