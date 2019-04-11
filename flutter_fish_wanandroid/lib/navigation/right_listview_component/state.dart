import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class RightListViewComponentState implements Cloneable<RightListViewComponentState> {

  List<NavigationModel> modelList=new List();

  @override
  RightListViewComponentState clone() {
    return RightListViewComponentState()..modelList=modelList;
  }
}

RightListViewComponentState initState(Map<String, dynamic> args) {
  return RightListViewComponentState();
}
