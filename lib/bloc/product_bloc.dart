import 'package:ecommerce/model/getproduct/getproduct.dart';
import 'package:ecommerce/repository/repo.dart';

class AppDetailsBloc {
  static final AppDetailsBloc _appDetailsBloc = AppDetailsBloc._internal();

  factory AppDetailsBloc() {
    return _appDetailsBloc;
  }
  AppDetailsBloc._internal();

  final Repository repository = Repository();

  Future<ResponceProduct> getAllProduct({required String token}) async{
    return await repository.productClient.getAllProduct(token);
  }
}
