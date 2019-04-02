import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class BannerState extends Cloneable<BannerState> {

  List<BannerModel> bannerList;

  PageController pageController=new PageController();

  Timer timer;

  @override
  BannerState clone() {
    return new BannerState()..bannerList = bannerList
    ..pageController=pageController
    ..timer=timer;
  }
}

class BannerConnector extends ConnOp<HomePageState, BannerState> {
  @override
  BannerState get(HomePageState state) {
    BannerState bannerState=new BannerState();
    bannerState.bannerList=state.bannerList;
    return bannerState;
  }
}
