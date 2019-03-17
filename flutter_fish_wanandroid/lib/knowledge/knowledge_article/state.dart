import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter/material.dart';

class KnowLedgeArticlePageState extends Cloneable<KnowLedgeArticlePageState> {
  List<KnowLedgeBeanModel> children = new List();
  KnowLedgeBeanModel parent;

  int currentIndex = 0;


  @override
  KnowLedgeArticlePageState clone() {
    return new KnowLedgeArticlePageState()
      ..parent
      ..children = children
      ..currentIndex = currentIndex;
  }
}

KnowLedgeArticlePageState initState(Map<dynamic, dynamic> map) {
  List<KnowLedgeBeanModel> children = map["children"];
  KnowLedgeBeanModel parent = map["parent"];
  return new KnowLedgeArticlePageState()
    ..parent = parent
    ..children = children;
}
