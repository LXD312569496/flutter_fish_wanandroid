import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/knowledge/knowledge_article/page.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'action.dart';

Effect<KnowLedgeBeanModel> buildEffect() {
  return combineEffects(<Object, Effect<KnowLedgeBeanModel>>{
    ItemAction.onGotoKnowledgeArticlePage: onGotoKnowledgeArticlePage
  });
}

onGotoKnowledgeArticlePage(Action action, Context<KnowLedgeBeanModel> ctx) {
  Navigator.of(ctx.context).push(new MaterialPageRoute(builder: (context) {
    return KnowLedgeArticlePage().buildPage(action.payload);
  }));
}
