// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String userName, String password) async {
    Map<String, dynamic> body = {
      "mode": "formdata",
      "formdata": [
        {"key": "email", "value": userName, "type": "text"},
        {"key": "password", "value": password, "type": "text"}
      ]
    };
    try {
      var url = "https://technichal.prominaagency.com/api/auth/login";
      final dio = Dio();
      Response response = await dio.post(url, data: body);
      if (response.statusCode == 200 || response.statusCode == 400) {
        print("Succecc");
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.data}');
      } else {
        print("failure");
      }
    } catch (e) {
      print("expsion : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          "assets/images/login.svg",
          fit: BoxFit.fill,
        ),
        Transform.translate(
          offset: Offset(74.99, 58.75),
          child: Image.asset(
            "assets/images/love_photography.png",
            height: 131.56,
            width: 131.56,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
              ),
              Text(
                "My \n Gellary",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              BlurryContainer(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 400,
                width: 350,
                blur: 8,
                color: Colors.white.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "LOG IN ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "User Name"),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Password"),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          login(emailController.text.toString(),
                              passwordController.text.toString());
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          padding: EdgeInsets.symmetric(
                              horizontal: 120, vertical: 12.5),
                          backgroundColor: Color(0xFF7BB3FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text("SUBMIT"),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
