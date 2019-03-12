import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class HomePageState implements Cloneable<HomePageState> {
  List<ArticleModel> articleList = new List();

  List<BannerModel> bannerList = new List();

  @override
  HomePageState clone() {
    return new HomePageState()
      ..articleList = articleList
      ..bannerList = bannerList;
  }
}

/**
 * homepage页面，这个方法是必须写的
 */
HomePageState initState(Map<String, dynamic> map) {
  return new HomePageState();
}
