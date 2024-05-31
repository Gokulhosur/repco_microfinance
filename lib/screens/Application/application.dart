import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repco_project/screens/Application/Applicant/applicant_form.dart';
import 'package:repco_project/screens/Application/Family/createpage.dart';
import 'package:repco_project/screens/Application/Income/income_assets.dart';
import 'package:repco_project/screens/Application/Introducer/introducerpage.dart';
import 'package:repco_project/screens/Application/Loan/loan_page.dart';
import 'package:repco_project/screens/Application/Loan_Requirement/loan_requirementpage.dart';
import 'package:repco_project/screens/Application/Mobile_verify/numberverify.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(248, 4, 75, 1),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Application",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height - 140,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Numberverify()));
                              },
                              icon: Image.asset(
                                  "asset/Mobile Number Verification_White.png"),
                              iconSize: 82,
                            ),
                            Text(
                              "Mobile Number Verification",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.to(() => ApplicantForm());
                              },
                              icon: Image.asset("asset/Applicant_White.png"),
                              iconSize: 80,
                            ),
                            Text(
                              "Applicant",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.to(() => FamilyCreatePage());
                              },
                              icon: Image.asset("asset/Co-Applicant_White.png"),
                              iconSize: 80,
                            ),
                            Text(
                              "Family",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(() => IntroducerPage());
                          },
                          icon: Image.asset("asset/Guarantor_White.png"),
                          iconSize: 80,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 260),
                      child: Text(
                        "Introducer",
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(() => IncomeAssetspage());
                          },
                          icon: Image.asset("asset/Income - Assets_White.png"),
                          iconSize: 80,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 240),
                      child: Text(
                        "Income / Assets",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(() => LoanPage());
                          },
                          icon: Image.asset("asset/Loan_White.png"),
                          iconSize: 80,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 260),
                      child: Text(
                        "Loan",
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(() => LoanRequirementPage());
                          },
                          icon: Image.asset("asset/Requirment_White.png"),
                          iconSize: 80,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 260),
                      child: Text(
                        "Requirement",
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
