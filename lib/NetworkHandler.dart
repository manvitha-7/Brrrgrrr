import 'dart:convert';

import 'package:flutter/cupertino.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

class NetworkHandler {
  String baseurl = "https://localhost:5000";

  var log = Logger();

  // var response = networkHandler.getOrder("/update/user");

  Future getOrder(String url) async {
    var dio = Dio();
    url = formater(url);
    print(url);
    var response = await dio.get(url);

    // /user/register
    /*var response = await http.get(
      Uri.parse(url),
      headers: {
        "Allow-Control-Allow-Origin": "*",
      },
    );*/
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.data.toString());

      return json.decode(response.data.toString());
    }
    log.i(response.data.toString());
    log.i(response.statusCode);
  }

  Future<Response> post(String url, Map<String, dynamic> body) async {
    // url = formater(url);
    log.d(body);
    var dio = Dio();
    dio.options.baseUrl = 'http://localhost:5000';
    var response = await dio.post(url,
        data: json.encode(body),
        options: Options(headers: {"Access-Control-Allow-Origin": "*"}));
    //var Response = await dio.post('/test', data: json.encode(body));
    /*var response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-type": "application/json",
        "Allow-Control-Allow-Origin": "*",
      },
      body: json.encode(body),
    );*/
    return response;
  }

  String formater(String url) {
    return baseurl + url;
  }
}
