import 'package:flutter/material.dart';
import 'package:flutter_fish_wanandroid/drawer/drawer_page.dart';
import 'package:flutter_fish_wanandroid/home/home_page.dart';
import 'package:flutter_fish_wanandroid/knowledge/knowledge_page.dart';
import 'package:flutter_fish_wanandroid/widget/my_will_pop_scope.dart';
import 'package:logs/logs.dart';

void main() {
  final Log httpLog = new Log('http');
  httpLog.enabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  List<Widget> children;
  List<Widget> tabs;

  @override
  void initState() {
    super.initState();
    children = new List();
    children.add(new HomePage().buildPage(null));
    children.add(new KnowledgePage().buildPage(null));
    children.add(new HomePage().buildPage(null));
    children.add(new HomePage().buildPage(null));

    tabs = new List();
    tabs.add(
      new Tab(
        text: "首页",
        icon: new Icon(Icons.home),
      ),
    );
    tabs.add(
      new Tab(
        text: "知识体系",
        icon: new Icon(Icons.home),
      ),
    );
    tabs.add(
      new Tab(
        text: "导航",
        icon: new Icon(Icons.home),
      ),
    );
    tabs.add(
      new Tab(
        text: "项目",
        icon: new Icon(Icons.home),
      ),
    );

    tabController = new TabController(length: children.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MyWillPopScope(
      child: Scaffold(
        drawer: new Drawer(
          child: DrawerPage().buildPage(null),
        ),
        body: new TabBarView(
          children: children,
          controller: tabController,
        ),
        bottomNavigationBar: new Container(
          color: Theme.of(context).primaryColor,
          child: new TabBar(
            tabs: tabs,
            controller: tabController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
