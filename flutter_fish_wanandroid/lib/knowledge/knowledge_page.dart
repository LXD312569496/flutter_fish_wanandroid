import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'view.dart';
import 'effect.dart';
import 'reducer.dart';
import 'list_adapter/adapter.dart';

class KnowledgePage extends Page<KnowledgePageState, Map<String, dynamic>> {
  KnowledgePage() : super(
    initState:initState,
    view:buildView,
    effect:buildEffect(),
    reducer:buildReducer(),
    dependencies:Dependencies<KnowledgePageState>(
      adapter: KnowLedgeListAdapter()
    )
  );

}
