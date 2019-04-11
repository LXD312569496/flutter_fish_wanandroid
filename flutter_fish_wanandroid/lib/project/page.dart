import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'view.dart';
import 'reducer.dart';
import 'effect.dart';
import 'package:flutter_fish_wanandroid/widget/keep_alive_widget.dart';

class ProjectPage extends Page<ProjectState, Map<String, dynamic>> {
  ProjectPage()
      : super(
            wrapper: keepAliveWrapper,
            initState: initState,
            view: buildView,
            reducer: buildReducer(),
            effect: buildEffect());
}
