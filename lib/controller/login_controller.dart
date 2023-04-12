import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:my_gellary/model/login.dart';

class LoginController {
  static Future<User?> login(String email, String password) async {
    var headers = {
      "Content-Type": "application/json",
    };
    Map<String, String> body = {"email": email, "password": password};
    var bodyData = jsonEncode(body);
    try {
      Uri url =
          Uri.parse("https://technichal.prominaagency.com/api/auth/login");

      http.Response response =
          await http.post(url, headers: headers, body: bodyData);
      Map<String, dynamic> decodeResponse = await jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 400) {
        print("Success");
        print(decodeResponse);
        return User.fromJson(decodeResponse);
      } else {
        print("failure");
      }
    } catch (e) {
      print("expsion login : $e");
    }
    return null;
  }
}
