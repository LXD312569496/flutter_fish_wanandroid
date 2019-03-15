import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/knowledge/state.dart';

Widget buildView(KnowledgePageState state, dispatch, ViewService viewService) {
  ListAdapter listAdapter = viewService.buildAdapter();

  return new Container(
    child: ListView.builder(
      itemBuilder: listAdapter.itemBuilder,
      itemCount: listAdapter.itemCount,
    ),
  );
}
