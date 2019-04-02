import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';
import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

Widget buildView(BannerState state, dispatch, ViewService viewService) {
  return new Container(
    height: 250,
    child: getPageView(state.bannerList, state.pageController),
  );
}

PageView getPageView(List<BannerModel> list, PageController pageController) {
//  if (list.isNotEmpty) {
//    list.insert(0, list[list.length - 1]);
//    list.insert(list.length, list[1]);
//  }

  Timer.periodic(Duration(seconds: 2), (time) {
//    print("getPageView:${pageController.hasClients}");
    if (pageController.hasClients) {
      /**
       * 要pageController.hasClients判断，不然会报错
       * https://github.com/jlouage/flutter-carousel-pro/issues/21
       */
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    }
  });

  /**
   * 利用PageView实现自己无限轮播的banner
   */
  return new PageView.builder(
    controller: pageController,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return getItemView(list[index].imagePath,
          "${pageController.page.round() + 1}/${list.length - 2}");
    },
    onPageChanged: (int index) {
//      if (index == 0) {
//        pageController.jumpToPage(list.length - 2);
//      } else if (index == list.length - 1) {
//        pageController.jumpToPage(1);
//      }
    },
  );
}

Widget getItemView(String imagePath, String text) {
  return new Container(
    child: Stack(
      children: <Widget>[
        new Positioned.fill(
            child: new Image.network(
          imagePath,
          fit: BoxFit.fill,
        )),

//        new Text(text)
      ],
    ),
  );
}
