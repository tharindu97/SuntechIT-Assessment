import 'package:ecommerce/model/helper/authenricationrespond.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart' show Dio, Options, RequestOptions, ResponseType;

part 'userregister.g.dart';

@RestApi()
abstract class RegisterClient {
  factory RegisterClient(Dio dio) = _RegisterClient;

  @POST("/user/register")
  @Headers(<String, dynamic>{
    "Content-Type": "application/json",
  })
  Future<Responce> createUser(@Body() RequestBody requestBody);
}

@JsonSerializable()
class RequestBody {
  RequestBody({
    required this.fullName,
    required this.email,
    required this.password,
  });
  late final String fullName;
  late final String email;
  late final String password;

  RequestBody.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['fullName'] = fullName;
    _data['email'] = email;
    _data['password'] = password;
    return _data;
  }
}
