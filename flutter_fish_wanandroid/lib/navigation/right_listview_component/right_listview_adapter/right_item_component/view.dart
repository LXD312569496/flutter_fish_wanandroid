import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'package:flutter_fish_wanandroid/navigation/action.dart';
import 'package:random_pk/random_pk.dart';

Widget buildView(
    NavigationModel state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(8),
    child: new Wrap(
      spacing: 15,
      runSpacing: 15,
      children: getItems(dispatch, state),
    ),
  );
}

List<Widget> getItems(Dispatch dispatch, NavigationModel model) {
  List<Widget> result = new List();

  model.articles.forEach((article) {
    result.add(IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          dispatch(NavigationPageActionCreator.onGotoWebViewAction(article));
        },
        child: new Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          height: 50,
          decoration: BoxDecoration(
              color: RandomColor.next(),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Center(
            child: new Text(
              article.title,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    ));
  });

  return result;
}
