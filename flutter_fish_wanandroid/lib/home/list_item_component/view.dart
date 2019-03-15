import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

Widget buildView(ArticleModel article, dispatch, ViewService viewService) {
  return new RandomContainer(
    height: 120,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //新字
                article.fresh
                    ? new Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.orange, width: 0.5)),
                        child: Center(child: new Text("新")),
                      )
                    : new Container(),
                //作者名称
                new Expanded(child: new Text(article.author)),
                new Text(article.niceDate)
              ],
            ),
          ),
        ),
        //文章名称
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: new Text(article.title),
          ),
        ),
        //标签
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              color: Colors.blue,
              padding: EdgeInsets.all(5),
              child: new Text(article.chapterName),
            ),
            new Expanded(child: new Container()),
            new IconButton(icon: new Icon(Icons.favorite), onPressed: () {}),
          ],
        ),
      ],
    ),
  );
}
