import 'dart:convert';
import 'dart:io';
import 'package:days_mobile/utils/config.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:days_mobile/utils/app_exception.dart';

class Api {
  final String _baseUrl = base_url;

  final String _token;

  Api(String token) : _token = token;

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(_baseUrl + url), headers: {
        "Accept": "application/json",
        HttpHeaders.authorizationHeader: "Bearer $_token",
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}