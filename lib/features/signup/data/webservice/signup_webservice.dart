import 'dart:convert';
import 'package:http/http.dart';

import '../../../../core/networking/my_end_point.dart';

class SignupWebservice {
  Future<Map<String, dynamic>?> singUp(body) async {
    Uri uri = Uri.parse(MyEndPoint.baseUrl + MyEndPoint.users);

    print(uri.toString());
    print(body);
    Response response = await post(uri, body: body);

    if (response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'Failed to sing up with status code: ${response.statusCode}, body: ${response.body}');
    }
  }
}
