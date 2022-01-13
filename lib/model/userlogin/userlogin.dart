import 'package:ecommerce/model/helper/authenricationrespond.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart'
    show Dio, DioError, Options, RequestOptions, ResponseType;

part 'userlogin.g.dart';

@RestApi()
abstract class LoginClient {
  factory LoginClient(Dio dio) = _LoginClient;
  @POST("/user/authenticate")
  @Headers(<String, dynamic>{
    "Content-Type": "application/json",
  })
  Future<Responce> loginUser(
    @Header('Authorization') String token,
    @Query('username') String username,
    @Query('password') String password,
  );
}
