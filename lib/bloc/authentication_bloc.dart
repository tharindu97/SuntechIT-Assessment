import 'package:ecommerce/model/helper/authenricationrespond.dart';
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
}
