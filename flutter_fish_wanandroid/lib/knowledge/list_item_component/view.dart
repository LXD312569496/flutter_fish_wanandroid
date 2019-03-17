import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'action.dart';

Widget buildView(KnowLedgeBeanModel state, dispatch, ViewService viewService) {
  //拼接
  StringBuffer childString = StringBuffer();
  for (KnowLedgeBeanModel child in state.children) {
    childString.write(child.name + "  ");
  }

  return GestureDetector(
    onTap: () {
      //跳转界面
      dispatch(ItemActionCreator.onGotoKnowledgeArticlePage(state.children,state));
    },
    child: Container(
      constraints: BoxConstraints(minHeight: 100),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            "${state.name}",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          new Text(
            "${childString}",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    ),
  );
}
