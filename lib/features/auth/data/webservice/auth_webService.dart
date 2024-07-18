import 'package:e_commerce/core/networking/my_end_point.dart';
import 'package:http/http.dart';

class AuthWebservice {
  Future<String?> login(body) async {
    Uri url = Uri.https(MyEndPoint.baseUrl, MyEndPoint.lgoIn);

    Response response = await post(url, body: body);
    if (response.statusCode == 200) {
      return response.body;
    }
      return null;
  }
}
