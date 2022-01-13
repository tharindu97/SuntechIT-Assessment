import 'package:ecommerce/model/helper/authenricationrespond.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart'
    show Dio, DioError, Options, RequestOptions, ResponseType;

part 'passwordverification.g.dart';

@RestApi()
abstract class VerificationClient {
  factory VerificationClient(Dio dio) = _VerificationClient;
  @POST("/user/authenticate")
  @Headers(<String, dynamic>{
    "Content-Type": "application/json",
  })
  Future<Responce> passwordVerification(
    @Header('Authorization') String token,
    @Query('otp') String otp,
    @Query('state') String state,
  );
}
