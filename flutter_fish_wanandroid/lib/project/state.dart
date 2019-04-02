import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class ProjectState extends Cloneable<ProjectState>   {
  List<ProjectClassifyModel> classifyList;

  @override
  ProjectState clone() {
    return new ProjectState()..classifyList=classifyList;
  }
}

ProjectState initState(Map<String, dynamic> map) {
  return new ProjectState();
}
