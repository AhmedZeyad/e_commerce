import 'dart:convert';
import '../../../../core/networking/my_end_point.dart';
import 'package:http/http.dart';

class LoginWebservice {
  Future<Map<String, dynamic>?> login(
    body,
  ) async {
    Uri url = Uri.parse(MyEndPoint.baseUrl + MyEndPoint.lgoIn);
    // print(url);
    // Response response = await post(url, body: body);
    // send request
    Response response = await post(url, body: body);
    print(response.body);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 201) {
      Map<String, dynamic> data = json.decode(response.body);
      return data;
    }
    throw Exception('Failed to login');
  }
}
