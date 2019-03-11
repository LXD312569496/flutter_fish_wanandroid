import 'package:fish_redux/fish_redux.dart';

class DrawerPageState extends Cloneable<DrawerPageState> {
  String headUrl; //头像地址
  String userName; //用户名字

  @override
  DrawerPageState clone() {
    return new DrawerPageState()
      ..headUrl = headUrl
      ..userName = userName;
  }
}

/**
 * 一般写State的时候需要写一个用于initState的方法
 */
DrawerPageState initState(Map<String,dynamic> map) {
  return new DrawerPageState()
    ..userName = "入魔的冬瓜"
    ..headUrl = "";
}
