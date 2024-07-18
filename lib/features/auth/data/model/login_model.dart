class AuthModel {
  late String username;
  late String password;
  late String toke;
 static  toJson(String username,String password) {
    Map<String, dynamic> reuestBody = {
      "username": username,
      "password": password,
    };
    return reuestBody;
  }
}
