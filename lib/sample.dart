import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(130),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: const Text("-Select-"),
                      value: "-1",
                    ),
                    DropdownMenuItem(
                      child: Text("Today"),
                      value: "1",
                    ),
                    DropdownMenuItem(child: Text("Yesterday"), value: "2"),
                    DropdownMenuItem(child: Text("Tommorow"), value: "3"),
                  ],
                  onChanged: (v) {}),
            ),
          ),
          // CircleAvatar(
          //   backgroundColor: Color.fromARGB(248, 4, 75, 1),
          //   child: SizedBox(
          //     height: 20,
          //     width: 40,
          //     child: Image.asset(
          //       "asset/mansuit.png",
          //       color: Colors.white,
          //     ),
          //   ),
          // )

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 131, 130, 130)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(248, 4, 75, 1),
                                    ),
                                    shape: MaterialStateProperty.all(
                                        CircleBorder())),
                                child: Icon(Icons.close)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
