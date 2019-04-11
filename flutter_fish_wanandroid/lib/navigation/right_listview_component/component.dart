import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/navigation/right_listview_component/right_listview_adapter/adapter.dart';
import 'package:flutter_fish_wanandroid/navigation/state.dart';

import 'state.dart';
import 'view.dart';

class RightListViewComponent extends Component<RightListViewComponentState> {
  RightListViewComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<RightListViewComponentState>(
                adapter: RightListViewAdapter(),
                slots: <String, Dependent<RightListViewComponentState>>{
                }),);

}


class RightListViewConnect extends ConnOp<NavigationPageState,RightListViewComponentState>{
  @override
  RightListViewComponentState get(NavigationPageState state) {

    return RightListViewComponentState()..modelList=state.list;
  }
}