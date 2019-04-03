import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/knowledge/knowledge_article/state.dart';
import 'package:flutter_fish_wanandroid/project/item_component/component.dart';
import 'package:flutter_fish_wanandroid/project/item_component/state.dart';
import 'state.dart' as state;
import 'view.dart';

class KnowLedgeArticlePage
    extends Page<KnowLedgeArticlePageState, Map<dynamic, dynamic>> {
  KnowLedgeArticlePage()
      : super(
            initState: state.initState,
            view: buildView,
            dependencies: Dependencies<KnowLedgeArticlePageState>(slots: {
              "list": KnowLedgeConnect() + ProjectChildPageComponent()
            }));
}

class KnowLedgeConnect
    extends ConnOp<KnowLedgeArticlePageState, ProjectChildPageState> {
  @override
  ProjectChildPageState get(KnowLedgeArticlePageState state) {
    ProjectChildPageState projectChildPageState = new ProjectChildPageState();
    return projectChildPageState;
  }
}
