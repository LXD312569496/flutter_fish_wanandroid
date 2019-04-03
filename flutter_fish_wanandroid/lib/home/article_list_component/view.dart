import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/state.dart';

Widget buildView(ArticleListState state, dispatch, ViewService viewService) {
  final ListAdapter listAdapter = viewService.buildAdapter();

  return Container(
    child: new SliverList(
        delegate: new SliverChildBuilderDelegate(listAdapter.itemBuilder,
            childCount: listAdapter.itemCount)),
  );
}
