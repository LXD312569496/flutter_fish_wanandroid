import 'dart:developer' as developer;
import 'package:logs/logs.dart';


class LogUtil{


  static void debug(String message,{String name}){
    developer.log(message,name: name);
  }


}