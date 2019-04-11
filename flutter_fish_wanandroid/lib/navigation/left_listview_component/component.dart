import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/navigation/left_listview_component/left_listview_adapter/adapter.dart';
import 'package:flutter_fish_wanandroid/navigation/state.dart';

import 'state.dart';
import 'view.dart';

class LeftListViewComponent extends Component<LeftListViewComponentState> {
  LeftListViewComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<LeftListViewComponentState>(
                adapter: LeftListViewAdapter(),
                slots: <String, Dependent<LeftListViewComponentState>>{
                }),);

}

class ListViewConnector
    extends ConnOp<NavigationPageState, LeftListViewComponentState> {
  @override
  LeftListViewComponentState get(NavigationPageState state) {
    LeftListViewComponentState newState = new LeftListViewComponentState();
    newState.nameList = state.list.map((model) {
      return model.name;
    }).toList();
    return newState;
  }
}