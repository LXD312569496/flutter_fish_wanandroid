import 'package:flutter/material.dart';
import 'state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

Widget buildView(ProjectState state, dispatch, ViewService viewService) {
  return TabBarViewWidget(state.classifyList);
}

/**
 * 如何在fish_redux中使用tabbarView:其实就是把tabbarview封装在一个StatefulWidget就行了
 * https://github.com/alibaba/fish-redux/issues/58
 */
class TabBarViewWidget extends StatefulWidget {
  final List<ProjectClassifyModel> projectClassifyList;

  TabBarViewWidget(this.projectClassifyList);

  @override
  _TabBarViewWidgetState createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends State<TabBarViewWidget>
    with SingleTickerProviderStateMixin {
  List<Widget> tabs = new List();

  TabController tabController;

  @override
  void initState() {
    for (ProjectClassifyModel model in widget.projectClassifyList) {
      tabs.add(new Tab(
        text: model.name,
      ));
    }

    tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("项目"),
        bottom: new TabBar(
          isScrollable: true,
          tabs: tabs,
          controller: tabController,
        ),
      ),
      body: new PageView.builder(
          onPageChanged: (index){
            tabController.animateTo(index);
          },
          itemBuilder: (context, index) {
            return new Text("$index");
          }),
    );
  }
}
