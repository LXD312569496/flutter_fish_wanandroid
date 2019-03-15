import "package:dio/dio.dart";

//定义一个网络请求出错的回调
typedef NetworkError(String errorMsg);
typedef NetworkSuccess(Map<String, dynamic> data);

class DioUtil {
  static const String baseUrl = "https://www.wanandroid.com";
  static const String TYPE_GET = "get";
  static const String TYPE_POST = "post";

  Dio dio; //一般一个应用中只有一个dio实例

// 工厂模式
  factory DioUtil() => _getInstance();

  static DioUtil get instance => _getInstance();
  static DioUtil _instance;

  DioUtil._internal() {
    // 初始化
    if (dio == null) {
      BaseOptions options = new BaseOptions(baseUrl: baseUrl);
      dio = new Dio(options);
    }
  }

  static DioUtil _getInstance() {
    if (_instance == null) {
      _instance = new DioUtil._internal();
    }
    return _instance;
  }

  //get方法返回一个map的future类型
  Future get(String url,
      {Map data,
      Options options,
      CancelToken cancelToken,
      NetworkSuccess onSuccess,
      NetworkError onError}) async{
    return _request(url, TYPE_GET,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSuccess: onSuccess,
        onError: onError);
  }

  //post方法
  Future post(String url,
      {Map data,
      Options options,
      CancelToken cancelToken,
      NetworkSuccess onSuccess,
      NetworkError onError}) async{
    return _request(url, TYPE_POST,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSuccess: onSuccess,
        onError: onError);
  }

  Future _request(String url, String type,
      {Map data,
      Options options,
      CancelToken cancelToken,
      NetworkSuccess onSuccess,
      NetworkError onError}) async {
    try {
      Response response;
      if (type == TYPE_GET) {
        response = await dio.get(url,
            queryParameters: data, options: options, cancelToken: cancelToken);
      } else if (type == TYPE_POST) {
        response = await dio.post(url, data: data);
      }

      print("response:statusCode:${response}");
      print("response:${response.statusCode}");

      if (response.statusCode != 200) {
        var errorMsg = "网络请求错误，状态码:${response.statusCode}";
        return new Future.error(errorMsg);
      } else {
        //后面这部分可以根据业务更为具体的封装了一个统一的返回json的处理
        //response.data的
//        onSuccess(response.data);
//        print("onSuccess");
        return response.data;
      }
    } catch (e) {
      onError(e.toString());
    }
  }
}
