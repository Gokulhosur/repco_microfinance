import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repco_project/Models/getxcontroller.dart';
import '../../../homepage.dart';

class ApplicantForm extends StatefulWidget {
  const ApplicantForm({super.key});

  @override
  State<ApplicantForm> createState() => _ApplicantFormState();
}

class _ApplicantFormState extends State<ApplicantForm> {
  GlobleVar controller = Get.put(GlobleVar());
  // List controller.applicantMap["documentDetails"]["mainDocumentImages"] = [];
  //List sign = [];
  //List extraDocument = [];

  var size, height, width;

  var selectdocument;

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
                                  "asset/icons/Applicant.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Applicant",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 140,
                              width: 120,
                              //color: Colors.black,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color.fromARGB(
                                                          248, 4, 75, 1)),
                                              shape: MaterialStateProperty.all(
                                                  const CircleBorder())),
                                          child: const Icon(
                                            Icons.camera_alt_sharp,
                                            color: Colors.white,
                                          )))
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Enter Applicant PAN Number",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                                  const Size(120, 45)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromARGB(
                                                      255, 235, 231, 13))),
                                      child: const Text(
                                        "Verify",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: const Color.fromARGB(248, 4, 75, 1),
                              size: 18,
                            ),
                            Text(
                              "Your PAN Number verified successfully",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            thickness: 3,
                          ),
                        ),
                        commonExpansiontile("Personal Details", [
                          Column(
                            children: [
                              commondropdown(
                                  "Select Gender",
                                  ['Male', 'Female'],
                                  "personalDetails",
                                  "gender"),
                              commontextfield("Customer Name",
                                  "personalDetails", "customername"),
                              commontextfield("Father Name", "personalDetails",
                                  "fathername"),
                              commontextfield("Mother Name", "personalDetails",
                                  "mothername"),
                              commondropdown("Married", ['Yes', 'No'],
                                  "personalDetails", "married"),
                              commontextfield("Date of Birth",
                                  "personalDetails", "dateofbirth"),
                              commondropdown(
                                  "Educational Qualification",
                                  ['Under Graduate', 'Post Graduate', 'others'],
                                  "personalDetails",
                                  "educationalqualification"),
                              commondropdown(
                                  "Present Occupation",
                                  ['Salaried', 'Self Employed', 'others'],
                                  "personalDetails",
                                  "occupation"),
                              commondropdown(
                                  "Yearly Income",
                                  [
                                    '200000 Below',
                                    '300000 Below',
                                    '400000 Below',
                                    'Above 500000'
                                  ],
                                  "personalDetails",
                                  "yearlyincome"),
                              commondropdown(
                                  "Place",
                                  ['Urban', 'Rural', 'others'],
                                  "personalDetails",
                                  "place"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    248, 4, 75, 1))),
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Save"),
                                        Icon(Icons.navigate_next)
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ]),
                        commonExpansiontile("Family List Details", [
                          Column(
                            children: [
                              commondropdown(
                                  "No.of.Family Members",
                                  ['02', '03', '04', '05', 'Above 5'],
                                  "familyList",
                                  "noofFamilymembers"),
                              commondropdown(
                                  "No.of.Earning Members",
                                  ['02', '03', 'Above 3'],
                                  "familyList",
                                  "noofEarningmembers"),
                              commondropdown(
                                  "No.of.Non-Earning Members",
                                  ['02', '03', 'Above 3'],
                                  "familyList",
                                  "noofNonEarningmembers"),
                              commondropdown(
                                  "No.of.Married Members",
                                  ['02', '03', '04', 'Above 4'],
                                  "familyList",
                                  "noofMarriedMembers"),
                              commondropdown(
                                  "No.of.Unmarried Members",
                                  ['02', '03', 'Above 3'],
                                  "familyList",
                                  "noofUnmarriedMembers"),
                              commondropdown(
                                  "No.of.Children",
                                  ['02', '03', '04', '05', 'Above 5'],
                                  "familyList",
                                  "noofChildren"),
                              commondropdown(
                                  "Others", [], "familyList", "others"),
                              commondropdown(
                                  "Widow", [], "familyList", "widow"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    248, 4, 75, 1))),
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Save"),
                                        Icon(Icons.navigate_next)
                                      ],
                                    )),
                              )
                            ],
                          )
                        ]),
                        commonExpansiontile("Document Details", [
                          Column(
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
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                        decoration: const InputDecoration(
                                          hintText: "Select",
                                          border: OutlineInputBorder(),
                                        ),
                                        value: selectdocument,
                                        items: [
                                          'PAN Card',
                                          'Aadhaar Card',
                                          'others'
                                        ]
                                            .map((e) => DropdownMenuItem(
                                                value: e, child: Text(e)))
                                            .toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            selectdocument = val;
                                            controller.applicantMap[
                                                    "documentDetails"]
                                                ["selectedDocumentMain"] = val;
                                            print(controller.applicantMap[
                                                    "documentDetails"]
                                                ["selectedDocumentMain"]);
                                            print(controller.applicantMap[
                                                "documentDetails"]);
                                            // print(selectdocument);
                                          });
                                        }),
                                    if (selectdocument != null)
                                      commontextfield(
                                          "Name in your $selectdocument",
                                          "documentDetails",
                                          "name_in_Document"),
                                    if (selectdocument != null)
                                      commontextfield(
                                          "Enter $selectdocument number",
                                          "documentDetails",
                                          "document_number"),
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
                                                MaterialStateProperty.all(
                                                    const Size(120, 45)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4))),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        255, 235, 231, 13))),
                                        child: const Text(
                                          "Verify",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17),
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
                                padding: const EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                  .applicantMap[
                                                      "documentDetails"]
                                                      ["mainDocumentImages"]
                                                  .length ==
                                              0
                                          ? const SizedBox()
                                          : ListView.builder(
                                              itemCount: controller
                                                  .applicantMap[
                                                      "documentDetails"]
                                                      ["mainDocumentImages"]
                                                  .length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                          height: 40,
                                                          width: 35,
                                                          child: Image.asset(controller
                                                                          .applicantMap[
                                                                      "documentDetails"]
                                                                  [
                                                                  "mainDocumentImages"]
                                                              [
                                                              index]["imagepath"])),
                                                      Text(controller.applicantMap[
                                                                  "documentDetails"]
                                                              [
                                                              "mainDocumentImages"]
                                                          [index]["imagename"]),
                                                      IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              controller
                                                                  .applicantMap[
                                                                      "documentDetails"]
                                                                      [
                                                                      "mainDocumentImages"]
                                                                  .removeAt(
                                                                      index);
                                                            });
                                                          },
                                                          icon: const Icon(Icons
                                                              .delete_forever))
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                controller.applicantMap[
                                                        "documentDetails"]
                                                        ["mainDocumentImages"]
                                                    .add({
                                                  "imagepath":
                                                      'asset/application.jpg',
                                                  "imagename": "application.jpg"
                                                });
                                                print(
                                                    "controller.applicantMap[documentDetails] [mainDocumentImages]");
                                                print(controller.applicantMap[
                                                        "documentDetails"]
                                                    ["mainDocumentImages"]);
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
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Divider(
                                  thickness: 2,
                                  color: Colors.grey[500],
                                ),
                              ),
                              commondropdown(
                                  "Select Document",
                                  ['Voter Card', 'others'],
                                  "documentDetails",
                                  "selectDocument"),
                              commontextfield("Name in your Document",
                                  "documentDetails", "nameInDocument"),
                              commontextfield("Enter Document number",
                                  "documentDetails", "documentNumber"),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    const Size(120, 45)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4))),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        255, 235, 231, 13))),
                                        child: const Text(
                                          "Verify",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17),
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
                                padding: const EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                      child: controller
                                                  .applicantMap[
                                                      "documentDetails"]
                                                      ["extraDocumentImages"]
                                                  .length ==
                                              0
                                          ? const SizedBox()
                                          : ListView.builder(
                                              itemCount: controller
                                                  .applicantMap[
                                                      "documentDetails"]
                                                      ["extraDocumentImages"]
                                                  .length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      SizedBox(
                                                          height: 40,
                                                          width: 35,
                                                          child: Image.asset(controller
                                                                          .applicantMap[
                                                                      "documentDetails"]
                                                                  [
                                                                  "extraDocumentImages"]
                                                              [
                                                              index]["imagepath"])),
                                                      Text(controller.applicantMap[
                                                                  "documentDetails"]
                                                              [
                                                              "extraDocumentImages"]
                                                          [index]["imagename"]),
                                                      IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              controller
                                                                  .applicantMap[
                                                                      "documentDetails"]
                                                                      [
                                                                      "extraDocumentImages"]
                                                                  .removeAt(
                                                                      index);
                                                            });
                                                          },
                                                          icon: const Icon(Icons
                                                              .delete_forever))
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                controller.applicantMap[
                                                        "documentDetails"]
                                                        ["extraDocumentImages"]
                                                    .add({
                                                  "imagepath":
                                                      'asset/Dashboard Background.png',
                                                  "imagename":
                                                      "Dashboard Background.png"
                                                });
                                                print(controller.applicantMap[
                                                        "documentDetails"]
                                                    ["extraDocumentImages"]);
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
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              248, 4, 75, 1))),
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
                                            color:
                                                Color.fromARGB(248, 4, 75, 1)),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, bottom: 30),
                                child: Divider(
                                  thickness: 2,
                                  color: Colors.grey[500],
                                ),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  248, 4, 75, 1))),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Save"),
                                      Icon(Icons.navigate_next)
                                    ],
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          )
                        ]),
                        commonExpansiontile("Bank Details", [
                          Column(
                            children: [
                              commondropdown(
                                  "Select your Bank",
                                  ['State Bank of India', 'others'],
                                  "bankDetails",
                                  "bankName"),
                              commontextfield("Bank Account Number",
                                  "bankDetails", "accountNumber"),
                              commontextfield(
                                  "Branch Name", "bankDetails", "branchName"),
                              commontextfield(
                                  "IFSC Code", "bankDetails", "ifscCode"),
                              Padding(
                                  padding: const EdgeInsets.only(left: 180),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                                  const Size(180, 45)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
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
                                      "Your Bank Account verified successfully",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  248, 4, 75, 1))),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Save"),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ))
                            ],
                          )
                        ]),
                        commonExpansiontile("Address Details", [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 270,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black)),
                                  child: const Center(
                                    child: Text(
                                      "Google Map",
                                      style: TextStyle(fontSize: 26),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30, left: 10, right: 10),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                  .applicantMap[
                                                      "addressDetails"]
                                                      ["documentImages"]
                                                  .length ==
                                              0
                                          ? const SizedBox()
                                          : ListView.builder(
                                              itemCount: controller
                                                  .applicantMap[
                                                      "addressDetails"]
                                                      ["documentImages"]
                                                  .length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    // top: 5,
                                                    // bottom: 5
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                          height: 40,
                                                          width: 35,
                                                          child: Image.asset(controller
                                                                          .applicantMap[
                                                                      "addressDetails"]
                                                                  [
                                                                  "documentImages"]
                                                              [
                                                              index]["imagepath"])),
                                                      Text(controller.applicantMap[
                                                                  "addressDetails"]
                                                              ["documentImages"]
                                                          [index]["imagename"]),
                                                      IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              controller
                                                                  .applicantMap[
                                                                      "addressDetails"]
                                                                      [
                                                                      "documentImages"]
                                                                  .removeAt(
                                                                      index);
                                                            });
                                                          },
                                                          icon: const Icon(Icons
                                                              .delete_forever))
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
                                          controller
                                              .applicantMap["addressDetails"]
                                                  ["documentImages"]
                                              .add({
                                            "imagepath":
                                                'asset/application.jpg',
                                            "imagename": "application.jpg"
                                          });
                                          print(controller.applicantMap[
                                                  "addressDetails"]
                                              ["documentImages"]);
                                        });
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 17,
                                            backgroundColor:
                                                Color.fromARGB(248, 4, 75, 1),
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
                              Divider(
                                thickness: 2,
                                color: Colors.grey[500],
                              ),
                              const Text("Address Details",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black)),
                              commontextfield("Address Line 1",
                                  "addressDetails", "addressLine1"),
                              commontextfield("Address Line 2",
                                  "addressDetails", "addressLine2"),
                              commontextfield(
                                  "State", "addressDetails", "state"),
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
                              Divider(
                                thickness: 2,
                                color: Colors.grey[500],
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
                                        width: 275,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: controller
                                                .applicantMap["addressDetails"]
                                                    ["signImages"]
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
                                                                    .applicantMap[
                                                                        "addressDetails"]
                                                                        [
                                                                        "signImages"]
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
                                              controller.applicantMap[
                                                      "addressDetails"]
                                                      ["signImages"]
                                                  .add({"imagepath": ""});
                                              print(controller.applicantMap[
                                                      "addressDetails"]
                                                  ["signImages"]);
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
                              const SizedBox(
                                height: 50,
                              ),
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
                              )
                            ],
                          )
                        ]),
                        const SizedBox(
                          height: 100,
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
                controller.applicantMap[title][subtitle] = value;
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
                  controller.applicantMap[title][subtitle] = val!.toString();
                  print(controller.applicantMap[title][subtitle]);
                  print(controller.applicantMap[title]);
                });
              }),
        ],
      ),
    );
  }
}

// Widget commonDocupload(image, imagename) {
//   return;
// }
