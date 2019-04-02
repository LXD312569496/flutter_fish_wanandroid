import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';
import 'view.dart';
import 'effect.dart';

class BannerComponent extends Component<BannerState>{
  BannerComponent():super(
    view:buildView,
    effect:buildEffect()
  );


}