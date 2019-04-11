import 'package:fish_redux/fish_redux.dart';

class LeftListViewComponentState implements Cloneable<LeftListViewComponentState> {

  List<String> nameList=new List();

  @override
  LeftListViewComponentState clone() {
    return LeftListViewComponentState()..nameList=nameList;
  }
}


