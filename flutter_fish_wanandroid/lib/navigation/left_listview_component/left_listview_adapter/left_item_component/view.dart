import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    LeftItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 60,
    child: GestureDetector(
        onTap: () {
          dispatch(LeftItemActionCreator.onClickLeftItemAction(state.position));
        }, child: Center(child: new Text("${state.name}"))),
  );
}
