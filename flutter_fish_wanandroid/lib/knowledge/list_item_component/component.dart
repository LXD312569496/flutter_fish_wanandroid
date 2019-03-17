import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'view.dart';
import 'effect.dart';

class KnowLedgeItemComponent extends Component<KnowLedgeBeanModel> {
  KnowLedgeItemComponent() : super(view: buildView, effect: buildEffect());
}
