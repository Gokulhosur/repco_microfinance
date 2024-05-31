import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RejectedPage extends StatefulWidget {
  const RejectedPage({super.key});

  @override
  State<RejectedPage> createState() => _RejectedPageState();
}

class _RejectedPageState extends State<RejectedPage> {
 late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  // ignore: prefer_typing_uninitialized_variables
  //var size, height, width;

  final List<LoanData> chartData = [
    LoanData(DateTime(2022, 03, 24), 8),
    LoanData(DateTime(2022, 03, 25), 18),
    LoanData(DateTime(2022, 03, 26), 14),
    LoanData(DateTime(2022, 03, 27), 15),
    LoanData(DateTime(2022, 03, 28), 10),
    LoanData(DateTime(2022, 03, 29), 18),
    LoanData(DateTime(2022, 03, 30), 14),
    LoanData(DateTime(2022, 03, 31), 15),
    LoanData(DateTime(2022, 04, 01), 10),
    LoanData(DateTime(2022, 04, 02), 8),
  ];

  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 58,
              width: 170,
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      hintText: "-Select-",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  value: _value,
                  items: const [
                    DropdownMenuItem(
                      child: Text("-Select-"),
                      value: "-1",
                    ),
                    DropdownMenuItem(
                      value: "1",
                      child: Text(
                        "Last 10 days",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    DropdownMenuItem(value: "2", child: Text("Last 20 days")),
                    DropdownMenuItem(value: "3", child: Text("Last 30 days")),
                  ],
                  onChanged: (a) {
                    setState(() {
                      _value = a!;
                    });
                  }),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SfCartesianChart(
              tooltipBehavior: _tooltipBehavior,
              // enableSideBySideSeriesPlacement: false,
              plotAreaBorderWidth: 0,
              primaryXAxis: const DateTimeAxis(
                majorGridLines: MajorGridLines(width: 0),
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
              ),

              // onMarkerRender: (MarkerRenderArgs args) {
              //   // args.markerHeight = 20.0;
              //   // args.markerWidth = 20.0;
              //   args.shape = DataMarkerType.circle;
              // },

              series: <CartesianSeries>[
                // Renders line chart
                LineSeries<LoanData, DateTime>(
                  color: Colors.green,
                  dataSource: chartData,
                  xValueMapper: (LoanData sales, _) => sales.dateyear,
                  yValueMapper: (LoanData sales, _) => sales.sales,
                  enableTooltip: true,
                  markerSettings: const MarkerSettings(
                      isVisible: true,
                      height: 10,
                      width: 10,
                      color: Colors.green),
                )
              ]),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 5, left: 4, right: 4),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                // border: TableBorder.all(
                //   borderRadius:
                //       BorderRadius.all(Radius.circular(8)),
                // ),
                children: [
                  buildHeader([
                    'Customer ID',
                    'Applicant Name',
                    'Mobile Number',
                    'Loan Amount'
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Table(
                // border: TableBorder.all(
                //     borderRadius:
                //         BorderRadius.all(Radius.circular(8)),
                //     color:
                //         const Color.fromARGB(255, 136, 134, 134)),
                children: [
                  buildRow([
                    ' 019201',
                    'S.Roja Shekar',
                    '909302011',
                    'INR 1,400,300',
                  ]),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  buildRow(List<String> cells) => TableRow(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 180, 176, 176),
          ),
          borderRadius: BorderRadius.circular(8)),
      children: cells
          .map((cell) => Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                    child: Text(
                  cell,
                  style: const TextStyle(
                      fontSize: 11.27,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ))
          .toList());

  buildHeader(List<String> cells) => TableRow(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 247, 3),
          borderRadius: BorderRadius.circular(8)),
      children: cells
          .map((cell) => Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  cell,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ))
          .toList());
}

class LoanData {
  LoanData(this.dateyear, this.sales);
  final DateTime dateyear;
  final double sales;
}
