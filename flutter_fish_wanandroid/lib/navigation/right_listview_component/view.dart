import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:indexed_list_view/indexed_list_view.dart';

import 'state.dart';

Widget buildView(RightListViewComponentState state, Dispatch dispatch,
    ViewService viewService) {
  ListAdapter listAdapter = viewService.buildAdapter();

  return Container(
    child: new IndexedListView.builder(
      controller: state.scrollController,
      itemBuilder: (context,index){
        if(index>=state.modelList.length||index<0){
          return null;
        }
        return listAdapter.itemBuilder(context,index);
      },
    ),
  );
}
