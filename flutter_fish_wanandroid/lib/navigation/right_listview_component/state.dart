import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter/material.dart';

class RightListViewComponentState
    implements Cloneable<RightListViewComponentState> {
  List<NavigationModel> modelList = new List();

  ScrollController scrollController = new ScrollController();

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
