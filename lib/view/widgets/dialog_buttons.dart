import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  final String text;
  final String icon;
  final Color color;
  final void Function()? onPressed;
  const DialogButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        backgroundColor: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 25),
          )
        ],
      ),
    );
  }
}
