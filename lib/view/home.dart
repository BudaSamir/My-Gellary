import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String username = "Abdulrahman";
    List dummyImages = [
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
    ];

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
                child: Text(
                  "Welcom \n$username",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color(0XFFC83B3B),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Color(0XFFC83B3B), blurRadius: 15)
                          ]),
                      child: Image.asset("assets/images/arrow_back.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "log out",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierColor: Colors.black.withOpacity(0.0),
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      backgroundColor: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: const Color(0XFFFFEB38),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Color(0XFFFFEB38),
                                                  blurRadius: 15)
                                            ]),
                                        child: Image.asset(
                                            "assets/images/arrow_up.png"),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Upload",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      backgroundColor: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: const Color(0XFFFFEB38),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Color(0XFFFFEB38),
                                                  blurRadius: 15)
                                            ]),
                                        child: Image.asset(
                                            "assets/images/arrow_up.png"),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Upload",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    backgroundColor: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color(0XFFFFEB38),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Color(0XFFFFEB38), blurRadius: 15)
                          ]),
                      child: Image.asset("assets/images/arrow_up.png"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Upload",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemCount: dummyImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              dummyImages[index],
                            ),
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),
    ));
  }
}
// showDialog(
//                       context: context,
//                       builder: (BuildContext context) => AlertDialog(
                        
//                             content: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20)),
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 20, vertical: 10),
//                                       backgroundColor: Colors.white),
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                         width: 25,
//                                         height: 25,
//                                         decoration: BoxDecoration(
//                                             color: const Color(0XFFFFEB38),
//                                             borderRadius:
//                                                 BorderRadius.circular(20),
//                                             boxShadow: const [
//                                               BoxShadow(
//                                                   color: Color(0XFFFFEB38),
//                                                   blurRadius: 15)
//                                             ]),
//                                         child: Image.asset(
//                                             "assets/images/arrow_up.png"),
//                                       ),
//                                       const SizedBox(
//                                         width: 20,
//                                       ),
//                                       Text(
//                                         "Upload",
//                                         style: TextStyle(
//                                             color: Colors.black, fontSize: 20),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20)),
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 20, vertical: 10),
//                                       backgroundColor: Colors.white),
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                         width: 25,
//                                         height: 25,
//                                         decoration: BoxDecoration(
//                                             color: const Color(0XFFFFEB38),
//                                             borderRadius:
//                                                 BorderRadius.circular(20),
//                                             boxShadow: const [
//                                               BoxShadow(
//                                                   color: Color(0XFFFFEB38),
//                                                   blurRadius: 15)
//                                             ]),
//                                         child: Image.asset(
//                                             "assets/images/arrow_up.png"),
//                                       ),
//                                       const SizedBox(
//                                         width: 20,
//                                       ),
//                                       Text(
//                                         "Upload",
//                                         style: TextStyle(
//                                             color: Colors.black, fontSize: 20),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ));

// AwesomeDialog(
//                     context: context,
//                     dialogType: DialogType.noHeader,
//                     dialogBorderRadius: BorderRadius.circular(15),
//                     barrierColor: Colors.white.withOpacity(0.0),
//                     body: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20)),
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 10),
//                               backgroundColor: Colors.white),
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 25,
//                                 height: 25,
//                                 decoration: BoxDecoration(
//                                     color: const Color(0XFFFFEB38),
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: Color(0XFFFFEB38),
//                                           blurRadius: 15)
//                                     ]),
//                                 child:
//                                     Image.asset("assets/images/arrow_up.png"),
//                               ),
//                               const SizedBox(
//                                 width: 20,
//                               ),
//                               Text(
//                                 "Upload",
//                                 style: TextStyle(
//                                     color: Colors.black, fontSize: 20),
//                               )
//                             ],
//                           ),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20)),
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 10),
//                               backgroundColor: Colors.white),
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 25,
//                                 height: 25,
//                                 decoration: BoxDecoration(
//                                     color: const Color(0XFFFFEB38),
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: Color(0XFFFFEB38),
//                                           blurRadius: 15)
//                                     ]),
//                                 child:
//                                     Image.asset("assets/images/arrow_up.png"),
//                               ),
//                               const SizedBox(
//                                 width: 20,
//                               ),
//                               Text(
//                                 "Upload",
//                                 style: TextStyle(
//                                     color: Colors.black, fontSize: 20),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ).show();