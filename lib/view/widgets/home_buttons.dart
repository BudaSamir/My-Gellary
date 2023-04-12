import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final String icon;
  final Color color;
  final void Function()? onPressed;
  const HomeButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          backgroundColor: Colors.white),
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: color, blurRadius: 15)]),
            child: Image.asset(icon),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          )
        ],
      ),
    );
  }
}
