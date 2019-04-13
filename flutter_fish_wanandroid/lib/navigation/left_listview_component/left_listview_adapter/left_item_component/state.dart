import 'package:fish_redux/fish_redux.dart';

class LeftItemState implements Cloneable<LeftItemState> {

  String name;
  int position;
  LeftItemState({this.name,this.position});

  @override
  LeftItemState clone() {
    return LeftItemState()..name=name..position=position;
  }
}

LeftItemState initState(Map<String, dynamic> args) {
  return LeftItemState();
}
