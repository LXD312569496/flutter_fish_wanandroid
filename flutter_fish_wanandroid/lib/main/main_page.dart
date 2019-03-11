import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fish_wanandroid/main/state.dart';
import 'view.dart';
import 'effect.dart';
import 'state.dart';

class MainPage extends Page<MainPageState, Map<String, dynamic>> {
  MainPage()
      : super(initState: initState, view: buildView, effect: buildEffect());
}
