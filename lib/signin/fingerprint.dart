import 'package:flutter/material.dart';

class Fingerprint extends StatefulWidget {
  const Fingerprint({super.key});

  @override
  State<Fingerprint> createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Image.asset("asset/signinlogo.jpg"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(50, 30, 20, 0),
                      child: Text(
                        "Please place your finger \nover the sensor",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 220,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Image.asset("asset/fingerprinticons.png"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(50, 30, 20, 0),
                      child: Text(
                        "Don't have fingerprint \nenabled device ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(220, 50)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40))),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(248, 4, 75, 1))),
                          child: const Text(
                            "Standard Sign In",
                            style: TextStyle(fontSize: 19),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
