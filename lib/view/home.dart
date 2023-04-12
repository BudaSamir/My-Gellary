import 'package:flutter/material.dart';
import 'package:my_gellary/model/login.dart';
import 'package:my_gellary/view/login.dart';
import 'package:my_gellary/view/widgets/glass_dialog.dart';
import 'package:my_gellary/view/widgets/home_buttons.dart';
import 'package:my_gellary/view/widgets/images_view.dart';

class HomeScreen extends StatelessWidget {
  final User? user;
  const HomeScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? username = user?.name ?? "";
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          "assets/images/gellary.png",
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                    child: Text(
                      "Welcome \n $username",
                      textAlign: TextAlign.left,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 30, top: 15),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    "assets/images/user_pic.png",
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeButton(
                text: "log out",
                icon: "assets/images/arrow_back.png",
                color: const Color(0XFFC83B3B),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
              HomeButton(
                text: "Upload",
                icon: "assets/images/arrow_up.png",
                color: const Color(0XFFFFEB38),
                onPressed: () {
                  showDialog(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) => const GlassDialog());
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ImagesView()
        ],
      ),
    ));
  }
}
