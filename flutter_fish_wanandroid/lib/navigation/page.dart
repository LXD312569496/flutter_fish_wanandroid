import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/navigation/left_listview_component/component.dart';
import 'package:flutter_fish_wanandroid/navigation/right_listview_component/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'package:flutter_fish_wanandroid/widget/keep_alive_widget.dart';

class NavigationPage extends Page<NavigationPageState, Map<String, dynamic>> {
  NavigationPage()
      : super(
    wrapper:keepAliveWrapper,
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<NavigationPageState>(
              slots: <String, Dependent<NavigationPageState>>{
                "left_list_view": ListViewConnector() + LeftListViewComponent(),
                "right_list_view":
                    RightListViewConnect() + RightListViewComponent(),
              }),
          middleware: <Middleware<NavigationPageState>>[],
        );
}
