import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double circularmarker = 100.0;
  var size, height, width;
  var _value = "-1";
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
            color: const Color.fromARGB(248, 4, 75, 1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset("asset/signinlogo.jpg")),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            size: 35,
                            color: Colors.white,
                          )),
                      Image.asset("asset/Profile.png")
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: SfRadialGauge(axes: <RadialAxis>[
                    RadialAxis(
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            positionFactor: 0.1,
                            widget: Text(
                              circularmarker.toString().split(".").first,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 70),
                            ))
                      ],
                      minimum: 0,
                      maximum: 100,
                      showLabels: false,
                      showTicks: false,
                      axisLineStyle: const AxisLineStyle(
                        thickness: 0.2,
                        cornerStyle: CornerStyle.bothCurve,
                        color: Color.fromARGB(30, 0, 169, 181),
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      pointers: <GaugePointer>[
                        MarkerPointer(
                          value: circularmarker,
                          color: Colors.yellow,
                          markerWidth: 40,
                          markerHeight: 40,
                          markerType: MarkerType.circle,
                        ),
                        RangePointer(
                          color: Colors.yellow,
                          value: circularmarker,
                          cornerStyle: CornerStyle.startCurve,
                          width: 0.2,
                          sizeUnit: GaugeSizeUnit.factor,
                        )
                      ],
                    )
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    "Application Created",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height - 450,
              width: width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(248, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "Status",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 58,
                            width: 135,
                            child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    hintText: "-Select-",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                value: _value,
                                items: const [
                                  DropdownMenuItem(
                                    child: Text("-Select-"),
                                    value: "-1",
                                  ),
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(
                                      "Today",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                      value: "2", child: Text("Yesterday")),
                                  DropdownMenuItem(
                                      value: "3", child: Text("Tommorow")),
                                ],
                                onChanged: (a) {
                                  setState(() {
                                    _value = a!;
                                  });
                                }),
                          )
                        ],
                      ),
                      const Divider(thickness: 3),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 8),
                        child: Text(
                          "Approved",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LinearPercentIndicator(
                          lineHeight: 15,
                          progressColor: const Color.fromARGB(255, 33, 241, 68),
                          percent: 0.75,
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 5),
                        child: Text(
                          "Rejected",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 7, right: 7, bottom: 8),
                        child: LinearPercentIndicator(
                          lineHeight: 15,
                          progressColor: Colors.red,
                          percent: 0.20,
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 5),
                        child: Text(
                          "Draft",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 7, right: 7, bottom: 8),
                        child: LinearPercentIndicator(
                          lineHeight: 15,
                          progressColor: Colors.greenAccent,
                          percent: 0.55,
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 5),
                        child: Text(
                          "Submitted",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 15, left: 7, right: 7),
                        child: LinearPercentIndicator(
                          lineHeight: 15,
                          progressColor: Colors.amber,
                          percent: 0.16,
                          barRadius: const Radius.circular(10),
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
    );
  }
}
