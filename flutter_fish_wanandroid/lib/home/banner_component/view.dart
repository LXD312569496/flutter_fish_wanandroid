import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

Widget buildView(BannerState state, dispatch, ViewService viewService) {
  return new Container(
    height: 300,
    child: getPageView(5),
  );
}

PageView getPageView(int count) {
  PageController pageController = new PageController(viewportFraction: 1.0);
  pageController.addListener((){

  });

  return new PageView.builder(
    controller: pageController,
    itemCount: count,
    itemBuilder: (context, index) {
      return new RandomContainer(
        child: new Text("${index}"),
      );
    },
    onPageChanged: (int index) {

    },
  );
}
