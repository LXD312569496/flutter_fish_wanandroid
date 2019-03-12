import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/state.dart';
import 'package:flutter_fish_wanandroid/home/list_item_component/component.dart';

class HomeListAdapter extends DynamicFlowAdapter<HomePageState> {
  HomeListAdapter()
      : super(pool: <String, Component<Object>>{
          "type_normal": HomeListItemComponent()
        }, connector: HomeListConnect());
}

class HomeListConnect implements Connector<HomePageState, List<ItemBean>> {
  @override
  List<ItemBean> get(HomePageState state) {
    if (!state.articleList?.isEmpty) {
      return state.articleList.map((data) {
        return new ItemBean("type_normal", data);
      }).toList();
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(HomePageState state, List<ItemBean> substate) {}
}

//class ToDoListAdapter extends DynamicFlowAdapter<PageState> {
//  ToDoListAdapter()
//      : super(
//    pool: <String, Component<Object>>{
//      'toDo': ToDoComponent(),
//    },
//    connector: _ToDoListConnector(),
//    reducer: buildReducer(),
//  );
//}
//
//class _ToDoListConnector implements Connector<PageState, List<ItemBean>> {
//  @override
//  List<ItemBean> get(PageState state) {
//    if (state.toDos?.isNotEmpty == true) {
//      return state.toDos
//          .map<ItemBean>((ToDoState data) => ItemBean('toDo', data))
//          .toList(growable: true);
//    } else {
//      return <ItemBean>[];
//    }
//  }
//
//  @override
//  void set(PageState state, List<ItemBean> toDos) {
//    if (toDos?.isNotEmpty == true) {
//      state.toDos = List<ToDoState>.from(
//          toDos.map<ToDoState>((ItemBean bean) => bean.data).toList());
//    } else {
//      state.toDos = <ToDoState>[];
//    }
//  }
//}
