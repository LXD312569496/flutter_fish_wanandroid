import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter/material.dart';
import 'package:indexed_list_view/indexed_list_view.dart';

class RightListViewComponentState
    implements Cloneable<RightListViewComponentState> {
  List<NavigationModel> modelList = new List();

  IndexedScrollController scrollController = new IndexedScrollController();

  @override
  RightListViewComponentState clone() {
    return RightListViewComponentState()
      ..modelList = modelList
      ..scrollController = scrollController;
  }
}

RightListViewComponentState initState(Map<String, dynamic> args) {
  return RightListViewComponentState();
}
