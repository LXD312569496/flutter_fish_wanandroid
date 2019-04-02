import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'view.dart';
import 'reducer.dart';
import 'effect.dart';

class ProjectPage extends Page<ProjectState, Map<String, dynamic>> {
  ProjectPage()
      : super(
            initState: initState,
            view: buildView,
            reducer: buildReducer(),
            effect: buildEffect());
}
