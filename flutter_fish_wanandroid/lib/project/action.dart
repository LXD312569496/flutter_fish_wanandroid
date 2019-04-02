import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum ProjectAction { loadClassifyData, onRefreshData, refreshData }

class ProjectActionCreator {
  static Action loadClassifyDataAction(List<ProjectClassifyModel> list) {
    return new Action(ProjectAction.loadClassifyData, payload: list);
  }

  static Action onRefreshDataAction() {
    return new Action(ProjectAction.onRefreshData);
  }

  static Action refreshDataAction(List<ProjectListModel> list) {
    return new Action(ProjectAction.refreshData, payload: list);
  }
}
