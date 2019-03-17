import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum ItemAction { onGotoKnowledgeArticlePage }

class ItemActionCreator {
  static Action onGotoKnowledgeArticlePage(
      List<KnowLedgeBeanModel> children, KnowLedgeBeanModel parent) {
    Map map = {"children": children, "parent": parent};
    return new Action(ItemAction.onGotoKnowledgeArticlePage, payload: map);
  }
}
