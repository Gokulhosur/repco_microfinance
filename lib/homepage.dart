import 'package:flutter/material.dart';
import 'package:repco_project/screens/History/history.dart';
import 'package:repco_project/screens/Settings/settings.dart';

import 'screens/Application/application.dart';
import 'screens/dashboard.dart';

class Homepage extends StatefulWidget {
  final currentindex;
  const Homepage({super.key, required this.currentindex});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var currentindex = 0;

  var pages = <Widget>[
    const Dashboard(),
    const Application(),
    const History(),
    const Settings()
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      currentindex = widget.currentindex;
    });
  }

  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    height = size.height;
    width = size.width;
    return SafeArea(
        child: Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (val) {
            setState(() {
              currentindex = val;
              print(currentindex);
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(248, 4, 75, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(currentindex == 0
                  ? Icons.dashboard
                  : Icons.dashboard_outlined),
              label: "Dashboard",
              //backgroundColor: Color.fromARGB(248, 4, 75, 1),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    currentindex == 1 ? Icons.article : Icons.article_outlined),
                label: "Application"),
            BottomNavigationBarItem(
                icon: Icon(currentindex == 2
                    ? Icons.bar_chart
                    : Icons.bar_chart_outlined),
                label: "History"),
            BottomNavigationBarItem(
                icon: Icon(currentindex == 3
                    ? Icons.settings
                    : Icons.settings_outlined),
                label: "Settings"),
          ]),
    ));
  }
}
