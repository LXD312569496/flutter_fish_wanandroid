import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/component.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/state.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'view.dart';
import 'effect.dart';
import 'state.dart';
import 'reducer.dart';

class ProjectChildPageComponent
    extends Page<ProjectChildPageState, Map<String, dynamic>> {
  ProjectChildPageComponent()
      : super(
          view: buildView,
          effect: buildEffect(),
          initState: initState,
          reducer: buildReducer(),
          dependencies: Dependencies<ProjectChildPageState>(slots: {
            "articleList": ProjectArticleConnect() + ArticleListComponent()
          }),
        );
}
