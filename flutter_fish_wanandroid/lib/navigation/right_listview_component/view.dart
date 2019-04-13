import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(RightListViewComponentState state, Dispatch dispatch,
    ViewService viewService) {
  ListAdapter listAdapter = viewService.buildAdapter();

  return Container(
    child: new ListView.builder(
      controller: state.scrollController,
      itemBuilder: listAdapter.itemBuilder,
      itemCount: listAdapter.itemCount,
    ),
  );
}
