import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/navigation/left_listview_component/left_listview_adapter/left_item_component/component.dart';
import 'package:flutter_fish_wanandroid/navigation/left_listview_component/left_listview_adapter/left_item_component/state.dart';
import 'package:flutter_fish_wanandroid/navigation/left_listview_component/state.dart';

class LeftListViewAdapter extends DynamicFlowAdapter<LeftListViewComponentState> {
  LeftListViewAdapter()
      : super(
          pool: <String, Component<Object>>{"normal": LeftItemComponent()},
          connector: _LeftListViewConnector(),
        );
}

class _LeftListViewConnector extends ConnOp<LeftListViewComponentState, List<ItemBean>> {
  @override
  List<ItemBean> get(LeftListViewComponentState state) {
    return state.nameList.map((name) {
      return new ItemBean("normal", LeftItemState(name:name));
    }).toList();
  }

  @override
  void set(LeftListViewComponentState state, List<ItemBean> items) {}

  @override
  subReducer(reducer) {
    return super.subReducer(reducer);
  }
}
