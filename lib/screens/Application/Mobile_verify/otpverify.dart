import 'package:flutter/material.dart';
import 'package:repco_project/homepage.dart';

class Otpverify extends StatefulWidget {
  const Otpverify({super.key});

  @override
  State<Otpverify> createState() => _OtpverifyState();
}

class _OtpverifyState extends State<Otpverify> {
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
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Application",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height - 80,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(248, 4, 75, 1)),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.phone_iphone,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Text(
                            "Mobile Number Verification",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 27,
                          ),
                          child: Text(
                            "Enter Applicant Mobile Number",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230, top: 8),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 247, 230, 4))),
                              child: const Text(
                                "Re-send OTP",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            "Enter OTP Received ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: SizedBox(
                            width: 400,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(248, 4, 75, 1))),
                                child: const Text(
                                  "Verify Mobile Number",
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 150),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Homepage(
                                                    currentindex: 1,
                                                  )));
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    248, 4, 75, 1))),
                                    child: const Text(
                                      "Next  >",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                              ),
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
