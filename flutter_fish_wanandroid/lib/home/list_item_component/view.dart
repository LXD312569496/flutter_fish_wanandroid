import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

Widget buildView(String state, dispatch, ViewService viewService) {
  print("buildView");
  return new RandomContainer(
    height: 100,
    child: new Text("1"),
  );
}
