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
      child: CustomScrollView(
        slivers: <Widget>[
          new SliverToBoxAdapter(
            child: viewService.buildComponent("banner"),
          ),
          new SliverList(
              delegate: new SliverChildBuilderDelegate(listAdapter.itemBuilder,
                  childCount: listAdapter.itemCount))
        ],
      ),
    ),
  );
}
