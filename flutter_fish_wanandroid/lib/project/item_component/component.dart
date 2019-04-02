import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_wanandroid/model/model.dart';
import 'view.dart';

class ProjectItemComponent extends Component<String>{
  ProjectItemComponent():super(
    view:buildView
  );
}