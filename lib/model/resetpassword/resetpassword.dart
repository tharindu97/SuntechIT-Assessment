import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' show Dio, Options, RequestOptions, ResponseType;
import 'package:json_annotation/json_annotation.dart';

part 'resetpassword.g.dart';

@RestApi()
abstract class GetOTPClient {
  factory GetOTPClient(Dio dio) = _GetOTPClient;
  @POST("/user/authenticate")
  @Headers(<String, dynamic>{
    "Content-Type": "application/json",
  })
  Future<ResponceOTP> passwordVerification(
    @Header('Authorization') String token,
    @Query('email') String email,
  );
}

@JsonSerializable()
class ResponceOTP {
  ResponceOTP({
    required this.status,
    required this.title,
    required this.message,
    required this.token,
  });
  late final int status;
  late final String title;
  late final String message;
  late final String token;

  ResponceOTP.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json['message'];
    title = json['title'];
    token = json['body'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['title'] = title;
    _data['body'] = token;
    return _data;
  }
}
