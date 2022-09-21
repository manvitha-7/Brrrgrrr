import 'dart:convert';

import 'package:flutter/cupertino.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler {
  String baseurl = "https://localhost:5000";

  var log = Logger();

  // var response = networkHandler.getOrder("/update/user");

  Future getOrder(String url) async {
    url = formater(url);
    print(url);
    // /user/register
    var response = await http.get(
      Uri.parse(url),
      headers: {
        "Allow-Control-Allow-Origin": "*",
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);

      return json.decode(response.body);
    }
    log.i(response.body);
    log.i(response.statusCode);
  }

  Future<http.Response> post(String url, Map<String, dynamic> body) async {
    url = formater(url);
    log.d(body);
    var response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-type": "application/json",
        "Allow-Control-Allow-Origin": "*",
      },
      body: json.encode(body),
    );
    return response;
  }

  String formater(String url) {
    return baseurl + url;
  }
}
