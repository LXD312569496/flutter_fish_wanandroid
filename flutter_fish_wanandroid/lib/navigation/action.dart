import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum NavigationPageAction { loadData }

class NavigationPageActionCreator {
  static Action loadDataAction(List<NavigationModel> list) {
    return  Action(NavigationPageAction.loadData,payload: list);
  }



}
