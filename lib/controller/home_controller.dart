import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

import 'package:my_gellary/model/images.dart';

class HomeController {
  static String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTE3MTBmNTA4MzFmY2NiNDYwNGExMzY0ODJmNDFiZjU5OTEzY2JkY2ZhZmU2ZDY1OWJmZmQ5OGVkODE1MDk5MTRmNTRmMjZmZDA2NGZjZDIiLCJpYXQiOjE2NjcyODk3ODUuMDMzMTk5LCJuYmYiOjE2NjcyODk3ODUuMDMzMjAzLCJleHAiOjE2OTg4MjU3ODUuMDI2MzI0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.bWImC0xkzNQe8iKxL1Scg0tGGZGUy3vWsiX1vBzj1gLvynIMJcOqVkEVZc2C3MgSaCHjyqGkN7zWyqYVqLasAaKKFmj9JiQgXozvPcHJPoJCGQQvogt-gnM0DPeFMF-g_CVJPNZ3nUkXpOLl3Os5DhvW53OVT1n5pisoNyvsrEJURWTXxt1EIxwnmoj0An8y9kq2WSX4Zn2RoVGKe3QnL-KOGKksfv2ahj7hG-ZNwVYazI6TXCIxZBCYGoZtfvq9CjTrVUcCBSiGgdyaJzAZi0lNR2c2zcZxWGbBQ_QvfTFDZmmPyogScE5cgy4MGsnYe4Sw7qLmHIrSsrMaJxRgQ_b7xobq9ob1vDhw9O-VcPpiCllEFyjMkdKOFC8UffoYZB3bafp9KZB6Dr3tS7fo6f4ojAKnj-b8g6AigjuFb4FAYlC0vxT76mtvvYFm8MjH1kH2QmJ0HzvhBxv45K9Cdtuvr3DdrwyDaoROR4eZ6S-Xp-LYuCkZ-e4UenLJC4mDUu8u6xoyLHKul3FhNlAUMj-oScKZgJxRUYhbVxzXruHwaycKdlX284-Y6cfSAf3AjIvfaXYeB1ajGuuCtYceBVGM5tDxY4i9I7kthk3DNRjaRQPIl5c8GQlYV3I3p-RItB33Y-ECNiG92U2fgB8fAVw5urOuFX7pIZZ0NEc6VAY";
  static List<dynamic> imagesList = [];

  static Future<List<dynamic>?> images() async {
    Uri url = Uri.parse("https://technichal.prominaagency.com/api/my-gallery");
    var headers = {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };
    try {
      http.Response response = await http.get(url, headers: headers);
      var decodeResponse = await jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 400) {
        print("Success");
        print(decodeResponse);
        ImagesModel imagesModel = ImagesModel.fromJson(decodeResponse);
        imagesList = imagesModel.images;
        return imagesList;
      } else {
        print("failure");
        return null;
      }
    } catch (e) {
      print("expsion image: $e");
    }
    return null;
  }

  static uploadImages(File file) async {
    Map<String, dynamic>? headers = {
      "Accept": "application/json",
      'Authorization': 'Bearer $token',
    };
    try {
      Dio dio = Dio();
      String filename = file.path.split('/').last;
      FormData formData = FormData.fromMap(
          {"img": await MultipartFile.fromFile(file.path, filename: filename)});
      Response response = await dio.post(
          "https://technichal.prominaagency.com/api/upload",
          data: formData,
          options: Options(headers: headers));
      var decodeResponse = await jsonDecode(response.data);

      if (response.statusCode == 200 || response.statusCode == 400) {
        print("uploadImages Success");
        print(response.data);
        ImagesModel imagesModel = ImagesModel.fromJson(decodeResponse);
        imagesList = imagesModel.images;
      } else {
        print("uploadImages failure");
      }
    } catch (e) {
      print("expsion uploadImages : $e");
    }
  }
}
