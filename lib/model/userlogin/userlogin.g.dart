// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userlogin.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LoginClient implements LoginClient {
  _LoginClient(this._dio, {this.baseUrl}) {
    baseUrl ??= dotenv.env["BASE_URL"];
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Responce> loginUser(token, username, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password,
    };
    final _data = <String, dynamic>{};
    try {
      final _result = await _dio.fetch<Map<String, dynamic>>(
          _setStreamType<Responce>(Options(
                  method: 'POST',
                  headers: <String, dynamic>{
                    r'Content-Type': 'application/json',
                    r'Authorization': token.toString()
                  },
                  extra: _extra,
                  contentType: 'application/json')
              .compose(_dio.options, '/user/authenticate',
                  queryParameters: queryParameters, data: _data)
              .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
      final value = Responce.fromJson(_result.data!);
      return value;
    } on DioError catch (e) {
      print(e.error.toString());
      return Future<Responce>.value(
        Responce(
          message: "Connection Fail",
          status: 0,
          token: "",
          title: "Error",
        ),
      );
    }
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
