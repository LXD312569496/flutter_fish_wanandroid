import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/article_list_component/state.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';
import 'package:flutter_fish_wanandroid/home/list_item_component/component.dart';

class HomeListAdapter extends DynamicFlowAdapter<ArticleListState> {
  HomeListAdapter()
      : super(pool: <String, Component<Object>>{
          "type_normal": HomeListItemComponent()
        }, connector: HomeListConnect());
}

class HomeListConnect extends ConnOp<ArticleListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ArticleListState state) {
    if (!state.articleList?.isEmpty) {
      return state.articleList.map((data) {
        return new ItemBean("type_normal", data);
      }).toList();
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(ArticleListState state, List<ItemBean> substate) {}
}
