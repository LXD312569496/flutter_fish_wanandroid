import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';

Widget buildView(HomePageState state, dispatch, ViewService viewService) {
  final ListAdapter listAdapter = viewService.buildAdapter();

  return Scaffold(
    appBar: new AppBar(
      title: new Text("玩Android"),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          viewService.buildComponent("banner"),
          new Expanded(
              child: ListView.builder(
            itemBuilder: listAdapter.itemBuilder,
            itemCount: listAdapter.itemCount,
          )),
        ],
      ),
    ),
  );
}
