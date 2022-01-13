import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart'
    show Dio, DioError, Options, RequestOptions, ResponseType;

part 'getuserdetails.g.dart';

@RestApi()
abstract class GetUserClient {
  factory GetUserClient(Dio dio) = _GetUserClient;

  @GET('/user/logged-user-details')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
  })
  Future<UserResponce> getUserDetails(@Header('Authorization') String token);
}

@JsonSerializable()
class UserResponce {
  UserResponce({
    required this.status,
    required this.title,
    required this.message,
    required this.userDetails,
  });
  late final int status;
  late final String title;
  late final String message;
  late final UserDetails userDetails;

  UserResponce.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json['message'];
    title = json['title'];
    userDetails = json['body']['data'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['title'] = title;
    _data['body']['data'] = userDetails;
    return _data;
  }
}

@JsonSerializable(explicitToJson: true)
class UserDetails {
  UserDetails({
    required this.id,
    required this.fullName,
    required this.email,
    required this.createdTime,
    required this.loginProvider,
    required this.emailVerified,
  });

  late final int id;
  late final String fullName;
  late final String email;
  late final String createdTime;
  late final String loginProvider;
  late final bool emailVerified;

  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    createdTime = json['createdTime'];
    loginProvider = json['loginProvider'];
    emailVerified = json['emailVerified'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['email'] = email;
    data['createdTime'] = createdTime;
    data['loginProvider'] = loginProvider;
    data['emailVerified'] = emailVerified;
    return data;
  }
}
