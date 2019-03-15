import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

enum KnowLedgeAction {
  loadData,//获取到数据后，更新界面
}

class KnowLedgeActionCreator {


  static Action loadDataAction(List<KnowLedgeBeanModel> list)
  {
    return Action(KnowLedgeAction.loadData,payload:list);
  }
}
