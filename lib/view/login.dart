// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:http/http.dart' as http;
import 'package:my_gellary/controller/login_controller.dart';
import 'package:my_gellary/model/login.dart';
import 'package:my_gellary/view/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    User? userInfo;
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
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
                    height: 150,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    child: Text(
                      "My \n Gellary",
                      textAlign: TextAlign.center,
                    ),
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
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
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
                                  border: InputBorder.none,
                                  hintText: "User Name"),
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
                                  border: InputBorder.none,
                                  hintText: "Password"),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            userInfo = await LoginController.login(
                                emailController.text.toString(),
                                passwordController.text.toString());
                            if (userInfo != null) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                            user: userInfo,
                                          )));
                            }
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
        ),
      ),
    );
  }
}
