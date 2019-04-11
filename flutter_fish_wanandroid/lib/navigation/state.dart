import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class NavigationPageState implements Cloneable<NavigationPageState> {

  List<NavigationModel> list=new List();

  @override
  NavigationPageState clone() {
    return NavigationPageState()..list=list;
  }
}

NavigationPageState initState(Map<String, dynamic> args) {
  return NavigationPageState();
}
