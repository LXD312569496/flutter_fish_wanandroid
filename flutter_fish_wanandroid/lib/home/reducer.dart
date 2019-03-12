import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';
import 'action.dart';

Reducer<HomePageState> buildReducer() {
  return asReducer(<Object, Reducer<HomePageState>>{
    HomePageAction.loadBannerData: loadBannerData,
    HomePageAction.loadArticleData: loadArticleData
  });
}

HomePageState loadBannerData(HomePageState state, Action action) {
  HomePageState newState = state.clone();
  List<BannerModel> list = action.payload;
  newState.bannerList = list;
  return newState;
}

HomePageState loadArticleData(HomePageState state, Action action) {
  HomePageState newState = state.clone();
  List<ArticleModel> list = action.payload;
  newState.articleList = list;
  return newState;
}
