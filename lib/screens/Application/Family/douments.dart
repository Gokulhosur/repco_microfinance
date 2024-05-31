import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/getxcontroller.dart';

class DocumentsPage extends StatefulWidget {
  const DocumentsPage({super.key});

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  var selectdocument;
  //List mainDocument = [];
  //List extraDocument = [];

  GlobleVar controller = Get.put(GlobleVar());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select Document",
                  style: TextStyle(fontSize: 16),
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
                    value: selectdocument,
                    items: ['PAN Card', 'Aadhaar Card', 'others']
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectdocument = val;
                        controller.familyMap["documentDetails"]
                            ["selectedDocumentMain"] = val;
                        print(controller.familyMap["documentDetails"]
                            ["selectedDocumentMain"]);
                        print(controller.familyMap["documentDetails"]);

                        //print(selectdocument);
                      });
                    }),
                if (selectdocument != null)
                  commontextfield("Name in your $selectdocument",
                      "documentDetails", "name_in_Document"),
                if (selectdocument != null)
                  commontextfield("Enter $selectdocument number",
                      "documentDetails", "document_number"),
              ],
            ),
          ),
          // commondropdown(
          //     "Select Document",
          //     ['PAN Card', 'Aadhaar Card', 'others'],
          //     selectdocument),
          // commontextfield(
          //     "Name in your ${selectdocument == null ? "" : selectdocument}",
          //     name_in_Document),
          // commontextfield(
          //     "Enter ${selectdocument == null ? "" : selectdocument}",
          //     document_number),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(120, 45)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 235, 231, 13))),
                    child: const Text(
                      "Verify",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color.fromARGB(248, 4, 75, 1),
                  size: 18,
                ),
                Text(
                  "Your PAN Number verified successfully",
                  style: TextStyle(color: Colors.black),
                )
              ],
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
                        "Upload PAN Card",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
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
                              .familyMap["documentDetails1"]
                                  ["familyMainDocumentImages"]
                              .length ==
                          0
                      ? const SizedBox()
                      : ListView.builder(
                          itemCount: controller
                              .familyMap["documentDetails1"]
                                  ["familyMainDocumentImages"]
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
                                      child: Image.asset(controller
                                                  .familyMap["documentDetails1"]
                                              ["familyMainDocumentImages"]
                                          [index]["imagepath"])),
                                  Text(controller.familyMap["documentDetails1"]
                                          ["familyMainDocumentImages"][index]
                                      ["imagename"]),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          controller
                                              .familyMap["documentDetails1"]
                                                  ["familyMainDocumentImages"]
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            controller.familyMap["documentDetails1"]
                                    ["familyMainDocumentImages"]
                                .add({
                              "imagepath": 'asset/application.jpg',
                              "imagename": "application.jpg"
                            });
                            print(controller.familyMap["documentDetails1"]
                                ["familyMainDocumentImages"]);
                          });
                        },
                        icon: const Icon(
                          Icons.add_circle_outline_rounded,
                          size: 35,
                        ))
                  ],
                ),
              ]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Divider(
              thickness: 2,
              color: Colors.grey[500],
            ),
          ),
          commondropdown("Select Document", ['Voter Card', 'others'],
              "documentDetails1", "selectDocument"),
          commontextfield(
              "Name in your Document", "documentDetails11", "nameInDocument"),
          commontextfield(
              "Enter Document number", "documentDetails", "documentNumber"),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(120, 45)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 235, 231, 13))),
                    child: const Text(
                      "Verify",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color.fromARGB(248, 4, 75, 1),
                  size: 18,
                ),
                Text(
                  "Your PAN Number verified successfully",
                  style: TextStyle(color: Colors.black),
                )
              ],
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
                        "Upload Document",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
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
                  child: controller.familyMap["documentDetails1"]["familyExtraDocumentImages"].length == 0
                      ? const SizedBox()
                      : ListView.builder(
                          itemCount: controller.familyMap["documentDetails1"]["familyExtraDocumentImages"].length,
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
                                  SizedBox(
                                      height: 40,
                                      width: 35,
                                      child: Image.asset(
                                          controller.familyMap["documentDetails1"]["familyExtraDocumentImages"][index]["imagepath"])),
                                  Text(controller.familyMap["documentDetails1"]["familyExtraDocumentImages"][index]["imagename"]),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          controller.familyMap["documentDetails1"]["familyExtraDocumentImages"].removeAt(index);
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            controller.familyMap["documentDetails1"]["familyExtraDocumentImages"].add({
                              "imagepath": 'asset/Dashboard Background.png',
                              "imagename": "Dashboard Background.png"
                            });
                            print(controller.familyMap["documentDetails1"]["familyExtraDocumentImages"]);
                          });
                        },
                        icon: const Icon(
                          Icons.add_circle_outline_rounded,
                          size: 35,
                        ))
                  ],
                ),
              ]),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //color: Colors.black,
                  border:
                      Border.all(color: const Color.fromARGB(248, 4, 75, 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline_rounded,
                        size: 35,
                      )),
                  const Text(
                    "Add Another Document",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color.fromARGB(248, 4, 75, 1)),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 20, left: 15, right: 15),
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
                    onPressed: () {},
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
          ),
        ],
      ),
    );
  }

  Widget commonExpansiontile(title, List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ExpansionTile(
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
                print(controller.familyMap[title][subtitle]);
                print(controller.familyMap[title]);
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
