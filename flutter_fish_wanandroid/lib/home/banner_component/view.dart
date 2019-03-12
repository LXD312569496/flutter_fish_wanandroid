import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';
import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

Widget buildView(List<BannerModel> bannerList, dispatch, ViewService viewService) {
  return new Container(
    height: 250,
    child: getPageView(bannerList),
  );
}

PageView getPageView(List<BannerModel> list) {
  PageController pageController = new PageController(viewportFraction: 1.0);
  if (list.isNotEmpty) {
    list.insert(0, list[list.length - 1]);
    list.insert(list.length, list[1]);
  }

  return new PageView.builder(
    controller: pageController,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return new Container(
        child: new Image.network(
          list[index].imagePath,
          fit: BoxFit.cover,
        ),
      );
    },
    onPageChanged: (int index) {
      if (index == 0) {
        pageController.jumpToPage(list.length - 2);
      } else if (index == list.length - 2) {
        pageController.jumpToPage(1);
      }
    },
  );
}
