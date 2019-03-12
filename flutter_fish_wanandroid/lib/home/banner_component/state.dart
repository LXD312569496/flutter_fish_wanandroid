import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';


class BannerState extends Cloneable<BannerState>{


  @override
  BannerState clone() {
    return null;
  }
}


class BannerConnector extends ConnOp<HomePageState,BannerState>{

  @override
  BannerState get(HomePageState state) {

  }

  @override
  void set(HomePageState state, BannerState substate) {

  }
}