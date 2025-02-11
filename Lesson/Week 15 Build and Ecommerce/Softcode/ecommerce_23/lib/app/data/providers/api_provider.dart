import 'package:dio/dio.dart';

class APIProvider {
  final Dio dio = Dio(BaseOptions(
      baseUrl: "localhost:8000",
      contentType: 'application/json',
      responseType: ResponseType.json,
      validateStatus: (status) {
        return status! < 500;
      }));
}
