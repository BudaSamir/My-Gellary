import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_gellary/controller/home_controller.dart';
import 'package:my_gellary/view/widgets/dialog_buttons.dart';
import 'package:my_gellary/view/widgets/frosted_glass.dart';
import 'package:image_picker/image_picker.dart';

class GlassDialog extends StatefulWidget {
  const GlassDialog({super.key});

  @override
  State<GlassDialog> createState() => _GlassDialogState();
}

class _GlassDialogState extends State<GlassDialog> {
  final imagepicker = ImagePicker();

  void picker(ImageSource type) async {
    late File imageFile;
    var pickedImage = await imagepicker.pickImage(source: type);
    if (pickedImage != null) {
      setState(() {
        imageFile = File(pickedImage.path);
      });
      HomeController.uploadImages(imageFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        child: FrostedGlassBox(
          theHeight: 250,
          theWidth: 350,
          theChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DialogButton(
                  text: "Gellary",
                  icon: "assets/images/galleryIcon.png",
                  color: const Color(0XFFEFD8F9),
                  onPressed: () => picker(ImageSource.gallery)),
              DialogButton(
                text: "Camera",
                icon: "assets/images/camera.png",
                color: const Color(0XFFEBF6FF),
                onPressed: () => picker(ImageSource.camera),
              ),
            ],
          ),
        ));
  }
}
