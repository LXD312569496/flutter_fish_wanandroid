import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'action.dart';

Reducer<ProjectState> buildReducer() {
  return asReducer(<Object, Reducer<ProjectState>>{
    ProjectAction.loadClassifyData: loadClassifyData
  });
}

ProjectState loadClassifyData(ProjectState state, Action action) {
  ProjectState newState = state.clone();
  newState.classifyList = action.payload;
  return newState;
}
