import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/getxcontroller.dart';
import '../../../homepage.dart';

class LoanPage extends StatefulWidget {
  const LoanPage({super.key});

  @override
  State<LoanPage> createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
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
                                  "asset/icons/Loan.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Loan",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        commondropdown(
                            "Select Applicant or Family Members",
                            ['Applicant 1', 'Applicant 2'],
                            "loan",
                            "selectApplicant"),
                        commondropdown(
                            "Loan Types",
                            ['Financial Institution', 'others'],
                            "loan",
                            "loanTypes"),
                        commontextfield("Loan Institution Name", "loan",
                            "loanInstitutionName"),
                        commontextfield(
                            "Outstanding Amount", "loan", "outstandingAmount"),
                        commontextfield("EMI", "loan", "emi"),
                        commontextfield("Note", "loan", "note"),
                        commondropdown("Repayment Issues", ['OD', 'others'],
                            "loan", "repaymentIssues"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(
                                        const Size(120, 45)),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            255, 235, 231, 13))),
                                child: const Text(
                                  "Verify",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Color.fromARGB(248, 4, 75, 1),
                                size: 18,
                              ),
                              Text(
                                "Your Existing Loan Verified successfully",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(350, 70)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: Container(
                                height: 60,
                                width: 330,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            248, 4, 75, 1))),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline_outlined,
                                      color: Color.fromARGB(248, 4, 75, 1),
                                    ),
                                    Text(
                                      " Add Family Members Income",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color.fromARGB(248, 4, 75, 1)),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            thickness: 3,
                          ),
                        ),
                        commondropdown(
                            "Total Outstanding Loan Amount",
                            ['INR | 1,400', 'INR | 1,500', 'INR | 1,600'],
                            "loan",
                            "totalOutstandingAmount"),
                        commondropdown("Total EMI",
                            ['1 Year', '2 Year', '3 Year'], "loan", "totalEmi"),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(
                                        () => const Homepage(currentindex: 1));
                                  },
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(50, 43)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  248, 4, 75, 1))),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                    Get.to(
                                        () => const Homepage(currentindex: 1));
                                  },
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(50, 43)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  248, 4, 75, 1))),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
                        SizedBox(
                          height: 50,
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
                controller.loanpage[title][subtitle] = value;
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
                  controller.loanpage[title][subtitle] = val!.toString();
                  print(controller.loanpage[title][subtitle]);
                  print(controller.loanpage[title]);
                });
              }),
        ],
      ),
    );
  }
}
