import 'package:ecommerce/model/helper/authenricationrespond.dart';
import 'package:ecommerce/model/resetpassword/resetpassword.dart';
import 'package:ecommerce/model/userdetails/getuserdetails.dart';
import 'package:ecommerce/model/userregister/userregister.dart';
import 'package:ecommerce/repository/repo.dart';

class AuthenticationBloc {
  static final AuthenticationBloc _authenticationBloc =
      AuthenticationBloc._internal();

  factory AuthenticationBloc() {
    return _authenticationBloc;
  }
  AuthenticationBloc._internal();

  final Repository repository = Repository();

  Future<Responce> createUserAccount(RequestBody requestBody) async {
    return await repository.registerClient.createUser(requestBody);
  }

  Future<Responce> loginUserAccount({
    required String token,
    required String username,
    required String password,
  }) async {
    print(token.toString());
    return await repository.loginClient.loginUser(token, username, password);
  }

  Future<UserResponce> getUserDetails({required String token}) async {
    final UserResponce result = await repository.getUserClient.getUserDetails(token);
    print(result.status.toString());
    return result;
  }

  Future<ResponceOTP> getOTP({required String token, required String email}) async{
    return await repository.getOTPClient.passwordVerification(token, email);
  }
}
