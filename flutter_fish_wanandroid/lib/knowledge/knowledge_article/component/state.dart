import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class KnowLedgeArticleState extends Cloneable<KnowLedgeArticleState> {
  List<ArticleModel> list = new List();
  int cid;

  @override
  KnowLedgeArticleState clone() {
    return new KnowLedgeArticleState()
      ..list = list
      ..cid = cid;
  }
}

KnowLedgeArticleState initState(Map<String, dynamic> map) {
  int cid = map['cid'];
  return new KnowLedgeArticleState()..cid = cid;
}
