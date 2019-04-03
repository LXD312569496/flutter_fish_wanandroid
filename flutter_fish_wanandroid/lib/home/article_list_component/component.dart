import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/home/list_adapter/adapter.dart';
import 'state.dart';
import 'view.dart';
class ArticleListComponent extends Component<ArticleListState> {
  ArticleListComponent():super(
    view:buildView,
    dependencies:Dependencies<ArticleListState>(
      adapter:HomeListAdapter()
    )
  );
}

