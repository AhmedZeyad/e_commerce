class LoginModel {
  late final String? username;
  late final String? password;
  late final String? token;
  late final String? refresh_token;
  static toJson(String username, String password) {
    Map<String, dynamic> reuestBody = {
      "email": username,
      "password": password,
    };
    return reuestBody;
  }

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['access_token'];
    refresh_token = json['refresh_token'];
  }
}
