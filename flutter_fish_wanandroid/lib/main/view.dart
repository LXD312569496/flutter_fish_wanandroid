import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/home/home_page.dart';
import 'package:flutter_fish_wanandroid/main/state.dart';


Widget buildView(MainPageState state, dispatch, ViewService viewService) {

  List<BottomNavigationBarItem> items=new List();
  items.add(new BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text("首页")));
  items.add(new BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text("知识体系")));
  items.add(new BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text("导航")));
  items.add(new BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text("项目")));

  List<Widget> children=new List();
//  children.add(new HomePage());
//  children.add(new HomePage());
//  children.add(new HomePage());
//  children.add(new HomePage());



  return new Scaffold(
//    body: new TabBarView(children: ),
    bottomNavigationBar: new BottomNavigationBar(items: items),
  );
}
