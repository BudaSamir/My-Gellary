import 'package:flutter/material.dart';
import 'package:my_gellary/controller/home_controller.dart';
import 'package:my_gellary/model/login.dart';

class ImagesView extends StatelessWidget {
  const ImagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: FutureBuilder(
            future: HomeController.images(),
            initialData: [],
            builder: (context, img) {
              if (img.hasData) {
                return GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15),
                    itemCount: img.data?.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "${img.data?[index]}",
                              ),
                            )),
                      );
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
