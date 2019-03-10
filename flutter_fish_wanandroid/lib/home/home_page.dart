import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'view.dart';

class HomePage extends Page<HomePageState, Map<String, dynamic>> {
  HomePage():super(
    view:buildView,
    initState:initState
  );
}
