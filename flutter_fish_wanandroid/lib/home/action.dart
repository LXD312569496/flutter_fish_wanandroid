import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

/**
 * on开头是effect的action，没on开头是reducer的action
 */
enum HomePageAction {
  onLoadArticleData,
  onLoadBannerData,
  loadBannerData,
  loadArticleData,
}

class HomePageActionCreator {
  static Action onLoadBannerDataAction() {
    return new Action(HomePageAction.onLoadBannerData);
  }

  static Action loadBannerDataAction(List<BannerModel> list) {
    return new Action(HomePageAction.loadBannerData, payload: list);
  }

  static Action onLoadArticleDataAction(int page) {
    return new Action(HomePageAction.onLoadArticleData, payload: page);
  }

  static Action loadArticleDataAction(List<ArticleModel> list) {
    return new Action(HomePageAction.loadArticleData, payload: list);
  }
}
