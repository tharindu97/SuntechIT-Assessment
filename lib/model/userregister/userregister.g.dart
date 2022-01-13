// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userregister.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RegisterClient implements RegisterClient {
  _RegisterClient(this._dio, {this.baseUrl}) {
    baseUrl ??= dotenv.env["BASE_URL"];
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Responce> createUser(requestBody) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _result = await _dio.fetch(_setStreamType<Responce>(Options(
            method: 'POST',
            headers: <String, dynamic>{r'Content-Type': 'application/json'},
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, '/user/register',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Responce.fromJson(_result.data!);
    return value;
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
