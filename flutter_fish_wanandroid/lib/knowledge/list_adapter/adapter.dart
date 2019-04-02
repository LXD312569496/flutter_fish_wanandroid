import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/knowledge/state.dart';
import 'package:flutter_fish_wanandroid/knowledge/list_item_component/component.dart';

class KnowLedgeListAdapter extends DynamicFlowAdapter<KnowledgePageState> {
  KnowLedgeListAdapter()
      : super(
            pool: {"normal_type": KnowLedgeItemComponent()},
            connector: KnowLedgeConnect());
}

class KnowLedgeConnect
    extends ConnOp<KnowledgePageState, List<ItemBean>> {
  @override
  List<ItemBean> get(KnowledgePageState state) {
    return state.datalist.map((data) {
      return new ItemBean("normal_type", data);
    }).toList();
  }

  @override
  void set(KnowledgePageState state, List<ItemBean> substate) {

  }
}
