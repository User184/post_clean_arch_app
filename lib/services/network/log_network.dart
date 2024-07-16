import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class LogNetwork {
  final Dio dio;
  LogNetwork({required this.dio}) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseHeader: true,
        requestBody: true,
        maxWidth: 200,
      ),
    );
  }
}
