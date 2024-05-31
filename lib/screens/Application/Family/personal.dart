import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/getxcontroller.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  GlobleVar controller = Get.put(GlobleVar());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          commondropdown(
              "Select Gender", ['Male', 'Female'], "personalDetails", "gender"),
          commondropdown(
              "Select Relation Type",
              ['Father', 'Mother', 'Wife', 'husband', 'others'],
              "personalDetails",
              "relationType"),
          commontextfield("Name", "personalDetails", "customername"),
          commontextfield("Father Name", "personalDetails", "fathername"),
          commontextfield("Mother Name", "personalDetails", "mothername"),
          commondropdown(
              "Married", ['Yes', 'No'], "personalDetails", "married"),
          commontextfield("Date of Birth", "personalDetails", "dateofbirth"),
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
              ['200000 Below', '300000 Below', '400000 Below', 'Above 500000'],
              "personalDetails",
              "yearlyincome"),
          commondropdown("Place", ['Urban', 'Rural', 'others'],
              "personalDetails", "place"),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
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
                        Text("Next"),
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
            height: 300,
          )
        ],
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
                controller.familyMap[title][subtitle] = value;
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
