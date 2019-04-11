import 'package:fish_redux/fish_redux.dart';

class LeftListViewState implements Cloneable<LeftListViewState> {

  List<String> nameList;

  @override
  LeftListViewState clone() {
    return LeftListViewState()..nameList=nameList;
  }
}

LeftListViewState initState(Map<String, dynamic> args) {
  return LeftListViewState();
}
