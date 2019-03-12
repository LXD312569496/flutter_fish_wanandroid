import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class BannerState extends Cloneable<BannerState> {

  List<BannerModel> bannerList;

  @override
  BannerState clone() {
    return new BannerState()..bannerList = bannerList;
  }
}

class BannerConnector extends ConnOp<HomePageState, List<BannerModel>> {
  @override
  List<BannerModel> get(HomePageState state) {
    return state.bannerList;
  }
}
