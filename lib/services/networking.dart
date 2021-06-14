import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.stringUrl});
  final String stringUrl;

  Future getData() async {
    Uri url = Uri.parse(stringUrl);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
