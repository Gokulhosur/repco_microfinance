// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repco_project/Models/getxcontroller.dart';

import '../../../homepage.dart';

class IncomeAssetspage extends StatefulWidget {
  const IncomeAssetspage({super.key});

  @override
  State<IncomeAssetspage> createState() => _IncomeAssetspageState();
}

class _IncomeAssetspageState extends State<IncomeAssetspage> {
  GlobleVar controller = Get.put(GlobleVar());

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
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  "asset/icons/Income - Assets.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Income / Assets",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        commonExpansiontile("Residency", [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commondropdown("House", ['Own', 'Rental'],
                                  "residency", "house"),
                              commontextfield("Monthly Rental", "residency",
                                  "monthlyRental"),
                              commondropdown(
                                  "Residency",
                                  ['Concrete', 'others'],
                                  "residency",
                                  "residency"),
                              commondropdown(
                                  "Residency Period",
                                  ['Month', 'Others'],
                                  "residency",
                                  "residencyPeriod"),
                              commondropdown(
                                  "Residency Land Type",
                                  ['occupied Land', 'others'],
                                  "residency",
                                  "residencyLandType"),
                              const Text(
                                "Slum Clearance Board",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              commontextfield(
                                  "Build Year", "residency", "buildYear"),
                              commondropdown("Old Building", ['Yes', 'No'],
                                  "residency", "oldBuilding"),
                              commondropdown("New Building", ['Yes', 'No'],
                                  "residency", "newBuilding"),
                              commondropdown("Temple Building", ['Yes', 'No'],
                                  "residency", "templeBuilding"),
                              commondropdown("Temple Land", ['Yes', 'No'],
                                  "residency", "templeLand"),
                              const Text(
                                "Smart Project Area",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              commontextfield("Project Completion Year",
                                  "residency", "projectCompletionYear"),
                              commontextfield(
                                  "Other Details", "residency", "otherDetails"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                        commonExpansiontile("Asset", [
                          Column(
                            children: [
                              commontextfield("Land", "asset", "land"),
                              commontextfield("Agriculture Land", "asset",
                                  "agricultureLand"),
                              commontextfield(
                                  "Empty Land", "asset", "emptyLand"),
                              commontextfield("Cattle", "asset", "cattle"),
                              commontextfield("Others", "asset", "others"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                        commonExpansiontile("Vehicles", [
                          Column(
                            children: [
                              commontextfield(
                                  "Two Wheeler", "vehicles", "twoWheeler"),
                              commontextfield(
                                  "Three Wheeler", "vehicles", "threeWheeler"),
                              commontextfield(
                                  "Four Wheeler", "vehicles", "fourWheeler"),
                              commontextfield("Commercial / Utility Vehicle",
                                  "vehicles", "commercialUtility"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                        commonExpansiontile("Household Amneties", [
                          Column(
                            children: [
                              commomTwoTextfield(
                                  "Smart Phone",
                                  "Count",
                                  "Size / Type",
                                  "householdAmneties",
                                  "phoneCount",
                                  "phoneType"),
                              commomTwoTextfield(
                                  "Airconditioner",
                                  "Count",
                                  "Size / Type",
                                  "householdAmneties",
                                  "acCount",
                                  "acType"),
                              commomTwoTextfield(
                                  "Mixie",
                                  "Count",
                                  "Size / Type",
                                  "householdAmneties",
                                  "mixieCount",
                                  "mixieType"),
                              commomTwoTextfield(
                                  "Fridge",
                                  "Count",
                                  "Size / Type",
                                  "householdAmneties",
                                  "fridgeCount",
                                  "fridgeType"),
                              commomTwoTextfield(
                                  "Television",
                                  "Count",
                                  "Size / Type",
                                  "householdAmneties",
                                  "tvCount",
                                  "tvType"),
                              commomTwoTextfield(
                                  "Washing Machine",
                                  "Count",
                                  "Size / Type",
                                  "householdAmneties",
                                  "washingMachineCount",
                                  "washingMachineType"),
                              commomTwoTextfield("Fan", "Count", "Size / Type",
                                  "householdAmneties", "fanCount", "fanType"),
                              commontextfield(
                                  "others", "householdAmneties", "others"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                        commonExpansiontile("Income", [
                          Column(
                            children: [
                              commondropdown(
                                  "Select Applicant / Earning Family Member",
                                  ['Applicant 1', 'Applicant 2'],
                                  "income",
                                  "selectApplicant"),
                              commondropdown(
                                  "Income Head",
                                  ['Salaried', 'others'],
                                  "income",
                                  "incomeHead"),
                              commontextfield(
                                  "Income Rs", "income", "incomeRs"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "+ Add Income",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(248, 4, 75, 1)),
                                      )),
                                ],
                              ),
                              commondropdown(
                                  "Income Head",
                                  ['Agriculture', 'Salaried', 'others'],
                                  "income",
                                  "incomeHead2"),
                              commontextfield(
                                  "Income Rs", "income", "incomeRs2"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "+ Add Income",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(248, 4, 75, 1)),
                                      )),
                                ],
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              commontextfield(
                                  "Last Year Worked Period(Months / Days)",
                                  "income",
                                  "lastYearWorkedPeriod"),
                              const Divider(
                                thickness: 2,
                              ),
                              commontextfield(
                                  "Annual Income", "income", "annualIncome"),
                              const Divider(
                                thickness: 2,
                              ),
                              commondropdown(
                                  "Other Source of Income",
                                  ['Fund Receipt', 'Rent', 'Lease'],
                                  "income",
                                  "otherSource"),
                              commontextfield(
                                  "Income Rs", "income", "otherSourceincomeRs"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "+ Add Another Income",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color:
                                                Color.fromARGB(248, 4, 75, 1)),
                                      )),
                                ],
                              ),
                              const Divider(
                                thickness: 2,
                              ),
                              commondropdown(
                                  "Shifted to new business in the current year?",
                                  ['Yes', 'No'],
                                  "income",
                                  "newBusiness"),
                              commontextfield("Details", "income", "details"),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                  ],
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(350, 70)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  child: Container(
                                    height: 60,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                248, 4, 75, 1))),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_circle_outline_outlined,
                                          color: Color.fromARGB(248, 4, 75, 1),
                                        ),
                                        Text(
                                          " Add Family Members Income",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color.fromARGB(
                                                  248, 4, 75, 1)),
                                        )
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 50, left: 15, right: 15),
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
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    const Size(50, 43)),
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
                                            Text(
                                              "Back",
                                              style: TextStyle(fontSize: 17),
                                            )
                                          ],
                                        )),
                                    ElevatedButton(
                                        onPressed: () {
                                          Get.to(() =>
                                              const Homepage(currentindex: 1));
                                        },
                                        style: ButtonStyle(
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    const Size(50, 43)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        248, 4, 75, 1))),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Next",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Icon(
                                              Icons.navigate_next,
                                              color: Colors.white,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ]),
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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ExpansionTile(
        collapsedTextColor: Colors.black,
        textColor: Colors.black,
        //shape: LinearBorder(bottom: LinearBorderEdge(alignment: 20)),
        trailing: const Icon(Icons.navigate_next),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                controller.incomeAssetMap[title][subtitle] = value;
                print(controller.incomeAssetMap);
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
                  controller.incomeAssetMap[title][subtitle] = val!.toString();
                  print(controller.incomeAssetMap[title][subtitle]);
                  print(controller.incomeAssetMap[title]);
                });
              }),
        ],
      ),
    );
  }

  Widget commomTwoTextfield(
      headerlabel, label1, label2, title, subtitle1, subtitle2) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headerlabel,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label1,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        //controller: controller,

                        onChanged: (value) {
                          setState(() {
                            controller.incomeAssetMap[title][subtitle1] = value;
                            print(controller.incomeAssetMap);
                          });
                        },

                        decoration: InputDecoration(
                            prefixIcon: label1 == "Mobile Number"
                                ? const IntrinsicHeight(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "+91",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Icon(Icons.keyboard_arrow_down_rounded),
                                        VerticalDivider(
                                          thickness: 2,
                                        )
                                      ],
                                    ),
                                  )
                                : null,
                            suffixIcon: label1 == "Date of Birth"
                                ? IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.calendar_today_rounded))
                                : null,
                            //  hintText: hint,
                            border: const OutlineInputBorder()),
                        keyboardType: label1 == "Mobile Number"
                            ? TextInputType.number
                            : null,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label2,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        //controller: controller,

                        onChanged: (value) {
                          setState(() {
                            controller.incomeAssetMap[title][subtitle2] = value;
                            print(controller.incomeAssetMap);
                          });
                        },

                        decoration: InputDecoration(
                            prefixIcon: label2 == "Mobile Number"
                                ? const IntrinsicHeight(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "+91",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Icon(Icons.keyboard_arrow_down_rounded),
                                        VerticalDivider(
                                          thickness: 2,
                                        )
                                      ],
                                    ),
                                  )
                                : null,
                            suffixIcon: label2 == "Date of Birth"
                                ? IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.calendar_today_rounded))
                                : null,
                            //  hintText: hint,
                            border: const OutlineInputBorder()),
                        keyboardType: label2 == "Mobile Number"
                            ? TextInputType.number
                            : null,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget commonDropdown(
//     label, List list1, List list2, title, subtitle1, subtitle2) {
//   return Padding(
//     padding: const EdgeInsets.all(15),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Row(
//           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: DropdownButtonFormField(
//                   icon: const Icon(Icons.keyboard_arrow_down_rounded),
//                   decoration: const InputDecoration(
//                     contentPadding: EdgeInsets.fromLTRB(8, 3, 2, 3),
//                     hintText: "Select",
//                     border: OutlineInputBorder(),
//                   ),
//                   //value: dropdownvalue,
//                   items: list1
//                       .map((e) => DropdownMenuItem(value: e, child: Text(e)))
//                       .toList(),
//                   onChanged: (val) {
//                     setState(() {
//                       controller.introducerMap[title][subtitle1] =
//                           val!.toString();
//                       print(controller.introducerMap[title][subtitle1]);
//                       print(controller.introducerMap[title]);
//                     });
//                   }),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Expanded(
//               child: DropdownButtonFormField(
//                   icon: const Icon(Icons.keyboard_arrow_down_rounded),
//                   decoration: const InputDecoration(
//                     contentPadding: EdgeInsets.fromLTRB(8, 3, 2, 3),
//                     hintText: "Select",
//                     border: OutlineInputBorder(),
//                   ),
//                   //value: dropdownvalue,
//                   items: list2
//                       .map((e) => DropdownMenuItem(value: e, child: Text(e)))
//                       .toList(),
//                   onChanged: (val) {
//                     setState(() {
//                       controller.introducerMap[title][subtitle2] =
//                           val!.toString();
//                       print(controller.introducerMap[title][subtitle2]);
//                       print(controller.introducerMap[title]);
//                     });
//                   }),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
