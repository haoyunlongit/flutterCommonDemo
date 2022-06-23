import 'package:dio/dio.dart';

class NetworkUtils {

  static const String _tag = 'NetworkUtils';
  /// 正式环境域名
  static const String baseUrl = 'https://h5.bbg.qq.com/';

  static Future<dynamic> fetchData(String path, dynamic data) async {
    String curUrl =  baseUrl;

    BaseOptions options = BaseOptions(
      baseUrl: curUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    options.headers['Origin'] = curUrl;
    options.headers['referer'] = curUrl;
    Dio dio = Dio(options);
    try {
      Response response = await dio.post(path, data: data);
      return response.data;
    } on DioError catch (e) {
      print('DioError: ' + e.toString());
    }
    return null;
  }

}