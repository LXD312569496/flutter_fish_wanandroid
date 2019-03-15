import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

class KnowledgePageState extends Cloneable<KnowledgePageState>{

  List<KnowLedgeBeanModel> datalist=new List();

  @override
  KnowledgePageState clone() {
    return new KnowledgePageState()..datalist=datalist;
  }
}


KnowledgePageState initState(Map<String,dynamic> map){
  return new KnowledgePageState();
}