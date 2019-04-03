import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/component.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/state.dart';
import 'state.dart';
import 'view.dart';

class KnowLedgeArticleComponent
    extends Page<KnowLedgeArticleState, Map<String, dynamic>> {
  KnowLedgeArticleComponent()
      : super(
            initState: initState,
            view: buildView,
            dependencies: Dependencies<KnowLedgeArticleState>(slots: {
              "articleList": KnowLedgeArticleConnect() + ArticleListComponent()
            }));
}
