import 'dart:convert';

import 'package:flutter/cupertino.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

class NetworkHandler {
  String baseurl = "http://localhost:5000";

  var log = Logger();

  // var response = networkHandler.getOrder("/update/user");

  Future getOrder(String url) async {
    var dio = Dio();
    url = formater(url);
    print(url);
    // var response = await dio.get(url);

    // Dio dio = Dio(
    //   BaseOptions(
    //     baseUrl: "http://localhost:5000/",
    //     // baseUrl: "https://brrrgrrr-server3-b6r3.vercel.app/",
    //   ),
    // );
    var response;
    try {
      response = await dio.get(url
          // )
          );
    } on DioError catch (e) {
      print(e.type);
    }

    // /user/register
    /*var response = await http.get(
      Uri.parse(url),
      headers: {
        "Allow-Control-Allow-Origin": "*",
      },
    );*/
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.data.toString());

      return response.data;
    }
    log.i(response.data.toString());
    log.i(response.statusCode);
  }

  Future<Response> post(String url, Map<String, dynamic> body) async {
    url = formater(url);
    log.d(url);
    log.d(body);
    var dio = Dio();

    // dio.options.baseUrl = 'http://localhost:5000';

    // Dio dio = Dio(
    //   BaseOptions(
    //     baseUrl: "http://localhost:5000/",
    //     // baseUrl: "https://brrrgrrr-server3-b6r3.vercel.app/",
    //   ),
    // );
    var response;
    try {
      response = await dio.post(url, data: body
          // )
          );
    } on DioError catch (e) {
      print(e.type);
    }
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
