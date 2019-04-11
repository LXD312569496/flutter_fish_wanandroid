import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';

import 'view.dart';

class RightListViewItemComponent extends Component<NavigationModel> {
  RightListViewItemComponent()
      : super(
//            effect: buildEffect(),
//            reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<NavigationModel>(
              adapter: null, slots: <String, Dependent<NavigationModel>>{}),
        );
}
