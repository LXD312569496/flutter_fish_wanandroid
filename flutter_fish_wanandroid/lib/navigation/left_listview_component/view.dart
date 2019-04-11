import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(LeftListViewComponentState state, Dispatch dispatch,
    ViewService viewService) {
  ListAdapter listAdapter = viewService.buildAdapter();

  return Container(
    child: new ListView.separated(
        itemBuilder: listAdapter.itemBuilder,
        separatorBuilder: (context, index) {
          return new Divider(
            height: 1,
            color: Colors.black,
          );
        },
        itemCount: listAdapter.itemCount),
  );
}
