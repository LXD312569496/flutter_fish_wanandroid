import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/knowledge/knowledge_article/component/state.dart';

Widget buildView(
    KnowLedgeArticleState state, dispatch, ViewService viewService) {
  return new CustomScrollView(
    slivers: <Widget>[
      viewService.buildComponent("articleList"),
    ],
  );
}
