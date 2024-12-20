// import 'package:dio/dio.dart';

// class ApiService {
//   ApiService(this._dio);
//   final _baseUrl = 'http://192.168.56.1:8888/api/login';

//   final Dio _dio;

//   Future<dynamic> get({required String endPint}) async {
//     var response = await _dio.get(_baseUrl);

//     return response.data;
//   }

//   Future<Map<String,dynamic>> post(
//       { required Map<String, dynamic>  data}) async {
//     var response = await _dio.post(
//       '$_baseUrl',
//       data: data,
//       options: Options(headers: {
//         'accept': 'application/json',
//         'Authorization':
//             'Bearer 1|BkFIpm3LjfTVBS8MUV9mLE6ogXp0X07w47hin7Ne5743f44b',
//       }),
//     );

//     return response.data;

//   }
// }
import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);
  final _baseUrl = 'http://192.168.56.1:8888/api/login';
  final Dio _dio;

  Future<Map<String, dynamic>> post({required dynamic data}) async {
    var response = await _dio.post(
      _baseUrl,
      data: data ,
      options: Options(headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer 1|BkFIpm3LjfTVBS8MUV9mLE6ogXp0X07w47hin7Ne5743f44b',
      }),
    );
    
    return response.data;
  }
}
