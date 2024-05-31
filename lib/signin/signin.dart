import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repco_project/signin/fingerprint.dart';
import 'package:repco_project/homepage.dart';

import '../Models/getxcontroller.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

var form = GlobalKey<FormState>();
bool isvalied = false;

saveform() {
  isvalied = form.currentState!.validate();
}

class _SigninState extends State<Signin> {
  GlobleVar controller = Get.put(GlobleVar());

  TextEditingController userid = TextEditingController();
  TextEditingController otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/splashscreen.jpg'),
                    fit: BoxFit.cover)),
            child: Form(
              key: form,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Image.asset("asset/signinlogo.jpg"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40, left: 20),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 35, right: 20),
                          child: TextFormField(
                            controller: userid,
                            decoration: const InputDecoration(
                              labelText: 'Enter User ID',
                              border: OutlineInputBorder(),
                            ),
                            // autovalidateMode: AutovalidateMode.,
                            validator: (value) {
                              if (value!.length != 10) {
                                return "Enter a 10 digit number";
                              }
                              return null;
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Send OTP",
                                style: TextStyle(
                                    color: Color.fromARGB(237, 5, 109, 2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 35, right: 20),
                          child: TextFormField(
                            controller: otp,
                            decoration: const InputDecoration(
                              labelText: 'Enter OTP',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.length != 4) {
                                return "Enter a correct OTP";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Get.off(() => const Homepage(
                                      currentindex: 0,
                                    ));

                                saveform();

                                if (isvalied) {
                                  print(userid.text);
                                  print(otp.text);
                                }
                              },
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(300, 50)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(248, 4, 75, 1))),
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Text(
                                "Having fingerprint enabled device ?",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Get.to(() => const Fingerprint());
                                },
                                style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(
                                        Size(220, 50)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40))),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(248, 4, 75, 1))),
                                child: const Text(
                                  "Finger Print Sign In",
                                  style: TextStyle(fontSize: 19),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
