import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:random_pk/random_pk.dart';
import 'state.dart';

Widget buildView(
    NavigationPageState state, Dispatch dispatch, ViewService viewService) {
  return SafeArea(
    child: Scaffold(
      body: Row(
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: viewService.buildComponent("left_list_view"),
          ),
          new Expanded(
            flex: 2,
//          child: viewService.buildComponent("right_list_view"),
            child: new SingleChildScrollView(
              child: new Wrap(
                spacing: 10,
                runSpacing: 10,
                children: getRightItems(state.list),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

List<Widget> getRightItems(List<NavigationModel> list) {
  List<Widget> result = new List();

  list.forEach((model) {
    model.articles.forEach((article) {
      result.add(new Container(
        decoration: BoxDecoration(
            color: RandomColor.next(),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        child: new Text(
          article.title,
          style: TextStyle(fontSize: 18),
        ),
      ));
    });
  });

  return result;
}
