import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class ProjectChildPageState extends Cloneable<ProjectChildPageState> {
  int cid;
  List<ArticleModel> list = new List();

  @override
  ProjectChildPageState clone() {
    return new ProjectChildPageState()
      ..cid = cid
      ..list = list;
  }
}

ProjectChildPageState initState(Map<String, dynamic> map) {
  return new ProjectChildPageState()..cid = map['cid'];
}
