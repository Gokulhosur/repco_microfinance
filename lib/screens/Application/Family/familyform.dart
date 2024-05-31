import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:repco_project/screens/Application/Family/address.dart';
import 'package:repco_project/screens/Application/Family/bank.dart';
import 'package:repco_project/screens/Application/Family/douments.dart';
import 'package:repco_project/screens/Application/Family/personal.dart';

import '../../../homepage.dart';

//import '../../../homepage.dart';

class FamilyForm extends StatefulWidget {
  const FamilyForm({super.key});

  @override
  State<FamilyForm> createState() => _FamilyFormState();
}

class _FamilyFormState extends State<FamilyForm> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    height = size.height;
    width = size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: const Color.fromARGB(248, 4, 75, 1),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Application",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height - 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.to(() => const Homepage(currentindex: 1));
                                },
                                icon: const Icon(
                                  Icons.navigate_before,
                                  size: 35,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  "asset/icons/Co-Applicant.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Family",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultTabController(
                          length: 4,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 235, 231, 13),
                                ),
                                child: const TabBar(
                                  unselectedLabelColor: Colors.black,
                                  indicator: BoxDecoration(
                                    color: Color.fromARGB(248, 4, 75, 1),
                                  ),
                                  tabs: [
                                    Tab(
                                      text: 'Personal',
                                    ),
                                    Tab(
                                      text: 'Documents',
                                    ),
                                    Tab(
                                      text: 'Bank',
                                    ),
                                    Tab(
                                      text: 'Address',
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: height,
                                child: const TabBarView(
                                  children: [
                                    Personal(),
                                    DocumentsPage(),
                                    Bank(),
                                    Address(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
