class LoginModel {
  late final String? username;
  late final String? password;
  late final String? token;
  static toJson(String username, String password) {
    Map<String, dynamic> reuestBody = {
      "username": username,
      "password": password,
    };
    return reuestBody;
  }

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }
}
