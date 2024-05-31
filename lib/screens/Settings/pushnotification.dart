import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:repco_project/homepage.dart';

class Pushnotofication extends StatefulWidget {
  const Pushnotofication({super.key});

  @override
  State<Pushnotofication> createState() => _PushnotoficationState();
}

class _PushnotoficationState extends State<Pushnotofication> {
  var size, height, width;
  bool status = false;
  bool state = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    height = size.height;
    width = size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
              height: height,
              width: width,
              color: const Color.fromARGB(248, 4, 75, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(()=>const Homepage(currentindex: 3));
                            
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const Homepage(
                            //               currentindex: 3,
                            //             )));
                          },
                          icon: const Icon(
                            Icons.navigate_before_sharp,
                            color: Colors.white,
                            size: 34,
                          )),
                      const Text(
                        "Push Notification",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  )
                ],
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height - 85,
                width: width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Review List Notifications",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                      "Get Push notification for Review list"),
                                )
                              ],
                            ),
                          ),
                          FlutterSwitch(
                            width: 60.0,
                            // height: 55.0,
                            // valueFontSize: 25.0,
                            activeColor: Color.fromARGB(248, 4, 75, 1),
                            toggleSize: 30.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 2.0,
                            showOnOff: false,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                                print(status);
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 6, bottom: 10, left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Application Reminder",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                      "Get Push notficicons for Appliaations"),
                                )
                              ],
                            ),
                          ),
                          FlutterSwitch(
                            width: 60.0,
                            // height: 55.0,
                            // valueFontSize: 25.0,
                            activeColor: Color.fromARGB(248, 4, 75, 1),
                            toggleSize: 30.0,
                            value: state,
                            borderRadius: 30.0,
                            padding: 2.0,
                            showOnOff: false,
                            onToggle: (val) {
                              setState(() {
                                state = val;
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Reset Notifications",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                      "Reset All notifications to default"),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (status || state == true) {
                                    status = false;
                                    state = false;
                                  }
                                });
                              },
                              icon: const Icon(Icons.cached))
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
