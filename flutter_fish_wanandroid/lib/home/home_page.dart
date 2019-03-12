import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/banner_component/component.dart';
import 'package:flutter_fish_wanandroid/home/banner_component/state.dart';
import 'state.dart';
import 'view.dart';
import 'list_adapter/adapter.dart';

class HomePage extends Page<HomePageState, Map<String, dynamic>> {
  HomePage()
      : super(
          view: buildView,
          initState: initState,
          dependencies: Dependencies<HomePageState>(
            adapter:HomeListAdapter() ,
            slots: <String, Dependent<HomePageState>>{
              "banner": BannerConnector() + BannerComponent()
            },
          ),
        );
}
