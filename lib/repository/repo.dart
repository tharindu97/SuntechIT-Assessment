import 'package:ecommerce/model/getproduct/getproduct.dart';
import 'package:ecommerce/model/resetpassword/resetpassword.dart';
import 'package:ecommerce/model/userdetails/getuserdetails.dart';
import 'package:ecommerce/model/userlogin/userlogin.dart';
import 'package:ecommerce/model/userregister/userregister.dart';
import 'package:ecommerce/repository/http_client.dart';

class Repository {
  static final Repository _repo = Repository._internal();

  factory Repository() {
    return _repo;
  }
  Repository._internal();

  RegisterClient registerClient = RegisterClient(HttpClient().dio);
  LoginClient loginClient = LoginClient(HttpClient().dio);
  GetOTPClient getOTPClient = GetOTPClient(HttpClient().dio);
  ProductClient productClient = ProductClient(HttpClient().dio);
  GetUserClient getUserClient = GetUserClient(HttpClient().dio);
}
