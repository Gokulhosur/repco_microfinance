import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repco_project/screens/Application/Family/familyviewpage.dart';

import '../../../Models/getxcontroller.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool isChecked = false;

  GlobleVar controller = Get.put(GlobleVar());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  "Google Map",
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)),
              height: 200,
              width: double.infinity,
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Capture House Photo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey[500],
                  indent: 10,
                  endIndent: 10,
                ),
                SizedBox(
                  height: 80,
                  child: controller
                              .familyMap["addressDetails"]
                                  ["familyDocumentImages"]
                              .length ==
                          0
                      ? const SizedBox()
                      : ListView.builder(
                          itemCount: controller
                              .familyMap["addressDetails"]
                                  ["familyDocumentImages"]
                              .length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                // top: 5,
                                // bottom: 5
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 40,
                                      width: 35,
                                      child: Image.asset(
                                          controller.familyMap["addressDetails"]
                                                  ["familyDocumentImages"]
                                              [index]["imagepath"])),
                                  Text(controller.familyMap["addressDetails"]
                                          ["familyDocumentImages"][index]
                                      ["imagename"]),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          controller.familyMap["addressDetails"]
                                                  ["familyDocumentImages"]
                                              .removeAt(index);
                                        });
                                      },
                                      icon: const Icon(Icons.delete_forever))
                                ],
                              ),
                            );
                          }),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey[500],
                  indent: 10,
                  endIndent: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.familyMap["addressDetails"]
                              ["familyDocumentImages"]
                          .add({
                        "imagepath": 'asset/application.jpg',
                        "imagename": "application.jpg"
                      });
                      print(controller.familyMap["addressDetails"]
                          ["familyDocumentImages"]);
                    });
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Color.fromARGB(248, 4, 75, 1),
                        child: Icon(
                          Icons.camera_alt_sharp,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Capture More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Container(
            //  height: 400,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Same as Applicant Address",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                !isChecked
                    ? Container(
                        // height: 350,
                        //  width: 365,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 250, 248, 248)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Address Details",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black)),
                            commontextfield("Address Line 1", "addressDetails",
                                "addressLine1"),
                            commontextfield("Address Line 2", "addressDetails",
                                "addressLine2"),
                            commontextfield("State", "addressDetails", "state"),
                            commondropdown(
                                "City",
                                ['Chennai', 'city2', 'city3'],
                                "addressDetails",
                                "city"),
                            commondropdown(
                                "Area",
                                ['Kolathur', 'Area1', 'Area2'],
                                "addressDetails",
                                "area"),
                            commontextfield(
                                "Pincode", "addressDetails", "pincode"),
                          ],
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
          // Divider(
          //   thickness: 2,
          //   color: Colors.grey[500],
          // ),

          // Divider(
          //   thickness: 2,
          //   color: Colors.grey[500],
          // ),
          const Text(
            "Signature",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
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
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 275,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller
                            .familyMap["addressDetails"]["familySignImages"]
                            .length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black)),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 72, left: 13),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            controller
                                                .familyMap["addressDetails"]
                                                    ["familySignImages"]
                                                .removeAt(index);
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
                                        child: const Icon(Icons.close)),
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
                          controller.familyMap["addressDetails"]
                                  ["familySignImages"]
                              .add({"imagepath": ""});
                          print(controller.familyMap["addressDetails"]
                              ["familySignImages"]);
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(248, 4, 75, 1),
                          ),
                          shape:
                              MaterialStateProperty.all(const CircleBorder())),
                      child: const Icon(Icons.add)),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(248, 4, 75, 1))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      Get.to(() => const AddNewMemberpage());
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(248, 4, 75, 1))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
            height: 250,
          )
        ],
      ),
    );
  }

  Widget commonExpansiontile(title, List<Widget> children) {
    // bool value = false;
    //children.add(ElevatedButton(onPressed: (){}, child:   Text("Save"),));
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ExpansionTile(
        // onExpansionChanged: (value ) {

        //   value == false ? Icon(Icons.add) : Icon(Icons.remove);
        // },
        collapsedBackgroundColor: const Color.fromARGB(255, 235, 231, 13),
        trailing: const Icon(Icons.add),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children: children,
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
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            //controller: controller,

            onChanged: (value) {
              setState(() {
                controller.familyMap[title][subtitle] = value;
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

  Widget commondropdown(lable, List list, title, subtitle) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          DropdownButtonFormField(
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              decoration: const InputDecoration(
                hintText: "Select",
                border: OutlineInputBorder(),
              ),
              //value: dropdownvalue,
              items: list
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  controller.familyMap[title][subtitle] = val!.toString();
                  print(controller.familyMap[title][subtitle]);
                  print(controller.familyMap[title]);
                });
              }),
        ],
      ),
    );
  }
}
