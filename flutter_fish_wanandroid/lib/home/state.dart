import 'package:fish_redux/fish_redux.dart';

class HomePageState implements Cloneable<HomePageState> {
  //todo:以后修改为文章
  List<String> homeList = new List();

  @override
  HomePageState clone() {
    return new HomePageState()..homeList = homeList;
  }
}

/**
 * homepage页面，这个方法是必须写的
 */
HomePageState initState(Map<String, dynamic> map) {
  List<String> list = new List();
  List.generate(15, (index) {
    list.add("${index}");
  });
  return new HomePageState()..homeList = list;
}
