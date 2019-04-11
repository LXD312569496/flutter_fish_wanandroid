import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/navigation/right_listview_component/right_listview_adapter/right_item_component/component.dart';
import 'package:flutter_fish_wanandroid/navigation/right_listview_component/state.dart';


class RightListViewAdapter
    extends DynamicFlowAdapter<RightListViewComponentState> {
  RightListViewAdapter()
      : super(
          pool: <String, Component<Object>>{
            "normal": RightListViewItemComponent()
          },
          connector: _RightListViewAdapterConnector(),
//          reducer: buildReducer(),
        );
}

class _RightListViewAdapterConnector
    extends ConnOp<RightListViewComponentState, List<ItemBean>> {
  @override
  List<ItemBean> get(RightListViewComponentState state) {
    return state.modelList.map((model) {
      return new ItemBean("normal", model);
    }).toList();
  }

  @override
  void set(RightListViewComponentState state, List<ItemBean> items) {}

  @override
  subReducer(reducer) {
    return super.subReducer(reducer);
  }
}
