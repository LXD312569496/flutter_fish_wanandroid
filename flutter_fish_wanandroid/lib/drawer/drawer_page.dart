import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'effect.dart';
import 'reducer.dart';
import 'view.dart';

class DrawerPage extends Page<DrawerPageState, Map<String, dynamic>> {
  DrawerPage()
      : super(initState: initState, effect: buildEffect(), view: buildView);
}
