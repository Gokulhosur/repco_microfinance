import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/getxcontroller.dart';
import '../../../homepage.dart';

class LoanRequirementPage extends StatefulWidget {
  const LoanRequirementPage({super.key});

  @override
  State<LoanRequirementPage> createState() => _LoanRequirementPageState();
}

class _LoanRequirementPageState extends State<LoanRequirementPage> {
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
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  "asset/icons/Requirment.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Loan Requirement",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        commontextfield("Requested Loan Amount", "requirement",
                            "requestedLoanAmount"),
                        commondropdown(
                            "Repayment Tenure in months",
                            ['24 Months', '36 Months', '48 Months'],
                            "requirement",
                            "repaymentTenure"),
                        commontextfield(
                            "Expected EMI", "requirement", "expectedEmi"),
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
                                        "Submit",
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
                controller.loanRequirement[title][subtitle] = value;
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
                  controller.loanRequirement[title][subtitle] = val!.toString();
                  print(controller.loanRequirement[title][subtitle]);
                  print(controller.loanRequirement[title]);
                });
              }),
        ],
      ),
    );
  }
}
