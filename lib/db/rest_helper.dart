import 'dart:convert';
import 'package:http/http.dart' as http;

class RESTHelper {
  RESTHelper._();
  static final RESTHelper restHelper = RESTHelper._();

  final JsonDecoder _jsonDecoder = JsonDecoder();

  Future<dynamic> get(String url) {
    return http.get(url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      switch (statusCode) {
        case 200:
          return _jsonDecoder.convert(res);
          break;
        case 400:
          return null;
          //todo ERROR?
          break;
        default:
          throw Exception("Error fetching JSON data");
      }
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding}) {
    return http
        .post(url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      switch (statusCode) {
        case 200:
          return _jsonDecoder.convert(res);
          break;
        case 400:
          return null;
          //todo ERROR?
          break;
        default:
          throw Exception("Error fetching JSON data");
      }
    });
  }
}
