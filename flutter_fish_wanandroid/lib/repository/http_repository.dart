import 'package:flutter_fish_wanandroid/utils/dio_util.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class WanHttpRepository {
  static final String GET_BANNER = "/banner";
  static final String GET_HOME_ARTICLE = "/article/list/";

  /**
   * 获取首页的Banner
   */
  static Future<List<BannerModel>> getBannerList() async {
    Map map = await DioUtil().get(GET_BANNER + "/json");
    List<BannerModel> list = new List();

    for (map in map['data']) {
      list.add(BannerModel.fromJson(map));
    }
    return list;
  }

  /**
   * 获取首页的文章
   */
  static Future<List<ArticleModel>> getHomeArticleList({int page = 0}) async {
    Map map = await DioUtil().get(GET_HOME_ARTICLE + "$page/json");
    List<ArticleModel> list = new List();

    for (map in map['data']['datas']) {
      list.add(ArticleModel.fromJson(map));
    }
    return list;
  }
}
