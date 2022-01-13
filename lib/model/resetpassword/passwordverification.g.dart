// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passwordverification.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _VerificationClient implements VerificationClient {
  _VerificationClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Responce> passwordVerification(token, otp, state) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'otp': otp, r'state': state};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<Responce>(Options(
            method: 'POST',
            headers: <String, dynamic>{
              r'Content-Type': 'application/json',
              r'Authorization': token
            },
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, '/user/authenticate',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
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
