import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';

Widget buildView(
    KnowLedgeArticlePageState state, dispatch, ViewService viewService) {

  List<Tab> tabs = List.generate(state.children.length, (index) {
    return new Tab(text: state.children[index].name);
  }).toList();

  List<Widget> items = List.generate(state.children.length, (index) {
    return new Center(
      child: new Text(state.children[index].name),
    );
  });

  return DefaultTabController(
    length: tabs.length,
    child: new Scaffold(
      appBar: new AppBar(
        title: new Text(state.parent.name),
        bottom: new TabBar(
          tabs: tabs,
          isScrollable: true,
        ),
      ),
      body: TabBarView(children: items),
    ),
  );
}



