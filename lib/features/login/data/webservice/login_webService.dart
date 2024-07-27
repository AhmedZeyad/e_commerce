import 'dart:convert';

import '../../../../core/networking/my_end_point.dart';
import 'package:http/http.dart';

class LoginWebservice {
  Future<Map<String, dynamic>?> login(body,) async {
    Uri url = Uri.https(MyEndPoint.baseUrl, MyEndPoint.lgoIn);

    Response response = await post(url, body: body);
    if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);

      return data;
    }
      throw Exception('Failed to login');
  }
}
