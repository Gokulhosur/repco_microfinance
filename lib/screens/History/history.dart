import 'package:flutter/material.dart';
import 'package:repco_project/screens/History/approved.dart';
import 'package:repco_project/screens/History/draft.dart';
import 'package:repco_project/screens/History/rejected.dart';
import 'package:repco_project/screens/History/reopen.dart';
import 'package:repco_project/screens/History/submitted.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {


  // ignore: prefer_typing_uninitialized_variables
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
            color: const Color.fromARGB(248, 4, 75, 1),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "History",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: height - 140,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DefaultTabController(
                        length: 5,
                        child: Column(
                          children: [
                            const TabBar(labelColor: Colors.black, tabs: [
                              Tab(
                                  icon:
                                      Icon(Icons.check_circle_outline_outlined),
                                  text: 'Approved'),
                              Tab(
                                  icon: Icon(Icons.cancel_outlined),
                                  text: 'Rejected'),
                              Tab(
                                  icon: Icon(Icons.edit_note_outlined),
                                  text: 'Draft'),
                              Tab(
                                  icon: Icon(Icons.thumb_up_alt_outlined),
                                  text: 'Submitted'),
                              Tab(
                                  icon: const Icon(Icons.get_app_outlined),
                                  text: 'Reopen'),
                            ]),
                            Container(
                              height: height,
                              child: const TabBarView(
                                children: [
                                  ApprovedPage(),
                                  RejectedPage(),
                                  DraftPage(),
                                  SubmittedPage(),
                                  ReopenPage()
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
