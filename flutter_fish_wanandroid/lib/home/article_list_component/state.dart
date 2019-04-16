import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';
import 'package:flutter_fish_wanandroid/knowledge/knowledge_article/component/state.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter_fish_wanandroid/project/item_component/state.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";

/**
 * 封装为一个统一的列表
 */
class ArticleListState extends Cloneable<ArticleListState> {
  List<ArticleModel> articleList = new List();

  @override
  ArticleListState clone() {
    return new ArticleListState()..articleList = articleList;
  }
}

class HomeArticleConnect extends ConnOp<HomePageState, ArticleListState> {
  @override
  ArticleListState get(HomePageState state) {
    ArticleListState listState = new ArticleListState();
    listState.articleList = state.articleList;
    return listState;
  }
}

class ProjectArticleConnect
    extends ConnOp<ProjectChildPageState, ArticleListState> {
  @override
  ArticleListState get(ProjectChildPageState state) {
    ArticleListState listState = new ArticleListState();
    listState.articleList = state.list;
    return listState;
  }
}

class KnowLedgeArticleConnect
    extends ConnOp<KnowLedgeArticleState, ArticleListState> {
  @override
  ArticleListState get(KnowLedgeArticleState state) {
    ArticleListState listState = new ArticleListState();
    listState.articleList = state.list;
    return listState;
  }
}
