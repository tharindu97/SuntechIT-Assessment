// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getproduct.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ProductClient implements ProductClient {
  _ProductClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponceProduct> getAllProduct(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponceProduct>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Accept': 'application/json',
                  r'Authorization': token
                },
                extra: _extra)
            .compose(_dio.options, '/product/list',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponceProduct.fromJson(_result.data!);
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
