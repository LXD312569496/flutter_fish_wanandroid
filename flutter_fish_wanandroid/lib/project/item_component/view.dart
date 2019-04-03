import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'state.dart';

Widget buildView(
    ProjectChildPageState state, dispatch, ViewService viewService) {
  return CustomScrollView(
    slivers: [
      new KeepAliveWidget(
        child: viewService.buildComponent("articleList"),
      ),
    ],
  );
}

/**
 * 在fish_redux中使用keepAlive
 */
class KeepAliveWidget extends StatefulWidget {
  final Widget child;

  KeepAliveWidget({@required this.child});

  @override
  _KeepAliveWidgetState createState() => _KeepAliveWidgetState();
}

class _KeepAliveWidgetState extends State<KeepAliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
