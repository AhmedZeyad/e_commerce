import '../model/login_model.dart';
import '../webservice/login_webservice.dart';

class LoginRebo {
  LoginWebservice authWebservice;
  LoginRebo({required this.authWebservice});
 Future<LoginModel> login(String username, String password) async {
    Map<String, dynamic>? respons =
        await authWebservice.login(LoginModel.toJson(username, password),);
    if (respons is Map<String, dynamic>)
    {

    return LoginModel.fromJson(respons);
    }

    throw Exception('Failed to login');
  }
}
