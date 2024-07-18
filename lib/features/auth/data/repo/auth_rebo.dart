import 'package:e_commerce/features/auth/data/model/login_model.dart';
import 'package:e_commerce/features/auth/data/webservice/auth_webService.dart';

class AuthRebo {
  AuthWebservice authWebservice;
  AuthRebo({required this.authWebservice});
 Future<String?> login(String username, String password) async {
    var respons =
        await authWebservice.login(AuthModel.toJson(username, password));
    return respons;
  }
}
