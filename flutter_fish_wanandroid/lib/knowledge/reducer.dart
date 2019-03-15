import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'action.dart';
Reducer<KnowledgePageState>  buildReducer(){
  return asReducer(<Object,Reducer<KnowledgePageState>>{
    KnowLedgeAction.loadData:loadData
  });
}

KnowledgePageState loadData(KnowledgePageState state,Action action){
  KnowledgePageState newState=state.clone();
  newState.datalist=action.payload;
  return newState;
}