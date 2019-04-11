import 'package:fish_redux/fish_redux.dart';

class LeftItemState implements Cloneable<LeftItemState> {

  String name;

  LeftItemState({this.name});

  @override
  LeftItemState clone() {
    return LeftItemState()..name=name;
  }
}

LeftItemState initState(Map<String, dynamic> args) {
  return LeftItemState();
}
