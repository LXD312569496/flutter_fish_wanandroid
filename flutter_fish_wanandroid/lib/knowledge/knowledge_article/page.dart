import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/knowledge/knowledge_article/state.dart';
import 'state.dart';
import 'view.dart';

class KnowLedgeArticlePage
    extends Page<KnowLedgeArticlePageState, Map<dynamic, dynamic>> {
  KnowLedgeArticlePage() : super(initState: initState, view: buildView);
}
