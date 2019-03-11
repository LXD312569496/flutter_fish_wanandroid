import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class MainPageState implements Cloneable<MainPageState> {

  @override
  MainPageState clone() {
    return new MainPageState();
  }
}

MainPageState initState(Map<String,dynamic> map) {
  return new MainPageState();
}
