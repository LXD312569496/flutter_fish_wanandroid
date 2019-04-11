import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/component.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/state.dart';
import 'package:flutter_fish_wanandroid/home/banner_component/component.dart';
import 'package:flutter_fish_wanandroid/home/banner_component/state.dart';
import 'package:flutter_fish_wanandroid/widget/keep_alive_widget.dart';
import 'state.dart';
import 'view.dart';
import 'list_adapter/adapter.dart';
import 'effect.dart';
import 'reducer.dart';

class HomePage extends Page<HomePageState, Map<String, dynamic>> {
  HomePage()
      : super(
    wrapper:keepAliveWrapper,
          view: buildView,
          effect:buildEffect(),
          initState: initState,
          reducer:buildReducer(),
          dependencies: Dependencies<HomePageState>(
            slots: <String, Dependent<HomePageState>>{
              "banner": BannerConnector() + BannerComponent(),
              "articleList":HomeArticleConnect()+ArticleListComponent()
            },
          ),
        );

}
