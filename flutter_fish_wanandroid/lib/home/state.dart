import 'package:fish_redux/fish_redux.dart';

class HomePageState implements Cloneable<HomePageState> {
  @override
  HomePageState clone() {
    return new HomePageState();
  }
}

/**
 * homepage页面，这个方法是必须写的
 */
HomePageState initState(Map<String, dynamic> map) {
  return new HomePageState();
}
