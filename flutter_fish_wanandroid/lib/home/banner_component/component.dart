import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'state.dart';
import 'view.dart';

class BannerComponent extends Component<List<BannerModel>>{
  BannerComponent():super(
    view:buildView
  );
}