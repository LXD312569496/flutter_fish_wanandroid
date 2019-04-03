import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum ProjectChildPageAction { loadData }

class ProjectChildPageActionCreator {
  static Action loadDataAction(List<ArticleModel> list) {
    return new Action(ProjectChildPageAction.loadData,payload: list);
  }
}
