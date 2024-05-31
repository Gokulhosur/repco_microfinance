import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:repco_project/screens/Settings/pushnotification.dart';
import 'package:repco_project/signin/signin.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'asset/Profile.png',
                    scale: 0.3,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "S.john Abraham",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "john.wick@gmail.com",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "+91 90920100192",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: 44,
                width: 160,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(248, 4, 75, 1),
                        )),
                    child: const Text("View Profile")),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Divider(
                thickness: 2.5,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => Pushnotofication());
              },
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.notifications_outlined,
                          size: 30, color: Color.fromARGB(255, 3, 35, 59)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Push Notification",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 3, 35, 59)),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.navigate_next),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.language,
                          size: 30, color: Color.fromARGB(255, 3, 35, 59)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 3, 35, 59)),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.navigate_next),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Get.offAll(() => Signin());
                // Navigator.pushAndRemoveUntil(
                //     context, MaterialPageRoute(builder: (context) => Signin()),(Route<dynamic> route) => false);
              },
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: Color.fromARGB(255, 2, 83, 150),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 2, 83, 150)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
