import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repco_project/homepage.dart';

import '../../../Models/getxcontroller.dart';

class IntroducerPage extends StatefulWidget {
  const IntroducerPage({super.key});

  @override
  State<IntroducerPage> createState() => _IntroducerPageState();
}

class _IntroducerPageState extends State<IntroducerPage> {
  //List sign = [];
  var size, height, width;
  GlobleVar controller = Get.put(GlobleVar());

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
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  "asset/icons/Guarantor.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Introducer",
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
                        commontextfield(
                            "Referred by Name", "introducer", "referredName"),
                        commontextfield(
                            "Customer ID", "introducer", "customerID"),
                        Padding(
                            padding: const EdgeInsets.only(left: 180),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(
                                        const Size(180, 45)),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            255, 235, 231, 13))),
                                child: const Text(
                                  "Verify Bank Account",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ))),
                        // RichText(text: TextSpan(text: "Your Bank Accoun"))
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Color.fromARGB(248, 4, 75, 1),
                                size: 18,
                              ),
                              Text(
                                "Your Customer ID verified successfully",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        commonDropdown(
                            "Known Period",
                            ['1 year', '2 year', '3 year', '> 3 year'],
                            ['5 Months', '6 Months', '7 Months', '> 7 Months'],
                            "introducer",
                            "knownPeriodYear",
                            "knownPeriodMonths"),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 15, right: 15, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Declaration :",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "I hereby Declare that, I Know ",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                      children: [
                                    TextSpan(
                                        text: controller
                                                .introducerMap["introducer"]
                                            ["referredName"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline)),
                                    const TextSpan(text: " For the past "),
                                    TextSpan(
                                        text: controller
                                                .introducerMap["introducer"]
                                            ["knownPeriodYear"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline)),
                                    const TextSpan(text: " and "),
                                    TextSpan(
                                        text: controller
                                                .introducerMap["introducer"]
                                            ["knownPeriodMonths"],
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.w500))
                                  ])),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Signature",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 100,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 120,
                                  width: double.infinity,
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 240,
                                        // decoration: BoxDecoration(
                                        //     border: Border.all(
                                        //         color: Colors.black)),
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: controller
                                                .introducerMap["introducer"]
                                                    ["introducerSignImages"]
                                                .length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      height: 90,
                                                      width: 90,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          border: Border.all(
                                                              color: Colors
                                                                  .black)),
                                                    ),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 72,
                                                                left: 13),
                                                        child: ElevatedButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                controller
                                                                    .introducerMap[
                                                                        "introducer"]
                                                                        [
                                                                        "introducerSignImages"]
                                                                    .removeAt(
                                                                        index);
                                                              });
                                                            },
                                                            style: ButtonStyle(
                                                                backgroundColor:
                                                                    MaterialStateProperty
                                                                        .all(
                                                                  const Color
                                                                      .fromARGB(
                                                                      248,
                                                                      4,
                                                                      75,
                                                                      1),
                                                                ),
                                                                shape: MaterialStateProperty
                                                                    .all(
                                                                        const CircleBorder())),
                                                            child: const Icon(
                                                                Icons.close)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            }),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              controller
                                                  .introducerMap["introducer"]
                                                      ["introducerSignImages"]
                                                  .add({"imagepath": ""});
                                              print(controller.introducerMap[
                                                      "introducer"]
                                                  ["introducerSignImages"]);
                                            });
                                          },
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    248, 4, 75, 1),
                                              ),
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder())),
                                          child: const Icon(Icons.add)),
                                    ],
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 50,
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Get.to(() =>
                                              const Homepage(currentindex: 1));
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        248, 4, 75, 1))),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.navigate_before,
                                              color: Colors.white,
                                            ),
                                            Text("Back")
                                          ],
                                        )),
                                    ElevatedButton(
                                        onPressed: () {
                                          Get.to(() =>
                                              const Homepage(currentindex: 1));
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        248, 4, 75, 1))),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.navigate_next,
                                              color: Colors.white,
                                            ),
                                            Text("Next")
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
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

  Widget commontextfield(label, title, subtitle) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            //controller: controller,

            onChanged: (value) {
              setState(() {
                controller.introducerMap[title][subtitle] = value;
                print(controller.introducerMap);
              });
            },

            decoration: InputDecoration(
                prefixIcon: label == "Mobile Number"
                    ? const IntrinsicHeight(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "+91",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded),
                            VerticalDivider(
                              thickness: 2,
                            )
                          ],
                        ),
                      )
                    : null,
                suffixIcon: label == "Date of Birth"
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_today_rounded))
                    : null,
                //  hintText: hint,
                border: const OutlineInputBorder()),
            keyboardType:
                label == "Mobile Number" ? TextInputType.number : null,
          )
        ],
      ),
    );
  }

  Widget commonDropdown(
      label, List list1, List list2, title, subtitle1, subtitle2) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  //width: width / 2,
                  child: DropdownButtonFormField(
                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(8, 3, 2, 3),
                        hintText: "Select",
                        border: OutlineInputBorder(),
                      ),
                      //value: dropdownvalue,
                      items: list1
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          controller.introducerMap[title][subtitle1] =
                              val!.toString();
                          print(controller.introducerMap[title][subtitle1]);
                          print(controller.introducerMap[title]);
                        });
                      }),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  // width: width / 2,
                  child: DropdownButtonFormField(
                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(8, 3, 2, 3),
                        hintText: "Select",
                        border: OutlineInputBorder(),
                      ),
                      //value: dropdownvalue,
                      items: list2
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          controller.introducerMap[title][subtitle2] =
                              val!.toString();
                          print(controller.introducerMap[title][subtitle2]);
                          print(controller.introducerMap[title]);
                        });
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
