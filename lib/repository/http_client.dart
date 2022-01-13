import 'dart:convert';
import 'package:dio/dio.dart';

class HttpClient {
  static final HttpClient _httpClient = HttpClient._internal();

  factory HttpClient() {
    return _httpClient;
  }

  HttpClient._internal();
  Dio dio = Dio();
  Encoding? encoding = Encoding.getByName("utf-8");
}
