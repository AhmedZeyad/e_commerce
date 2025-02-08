import 'package:e_commerce/features/signup/data/model/signup_model.dart';
import 'package:e_commerce/features/signup/data/webservice/signup_webservice.dart';

class SignupRepo {
  SignupWebservice signupWebservice;
  SignupRepo({required this.signupWebservice});
  Future<SignupModel> singUp(
    String name,
    String email,
    String password,
    String avatarUrl,
  ) async {
    Map<String, dynamic>? respons = await signupWebservice.singUp(SignupModel(
            avatar: avatarUrl, name: name, email: email, password: password)
        .toJson());

    if (respons is Map<String, dynamic>) {
      return SignupModel.fromJson(respons);
    }

    throw Exception('Failed to sing up');
  }
}
