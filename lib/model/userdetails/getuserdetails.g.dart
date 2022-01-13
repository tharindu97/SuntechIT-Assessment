// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getuserdetails.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GetUserClient implements GetUserClient {
  _GetUserClient(this._dio, {this.baseUrl}) {
    baseUrl ??= dotenv.env["BASE_URL"];
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserResponce> getUserDetails(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserResponce>(Options(
                method: 'GET',
                headers: <String, dynamic>{
                  r'Accept': 'application/json',
                  r'Authorization': token
                },
                extra: _extra)
            .compose(_dio.options, '/user/logged-user-details',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserResponce.fromJson(_result.data!);
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
