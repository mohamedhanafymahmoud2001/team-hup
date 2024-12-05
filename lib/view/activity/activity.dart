import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Activity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Activity();
  }
}

class _Activity extends State<Activity> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet bottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(color: colorsApp.colorwhiteapp),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: InputSearch(
                              hint: "Search your payslip, attendence...",
                              controler: val.api.code3,
                              icon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.search,
                                    color: colorsApp.colorgreyapp,
                                  )),
                              keyboard: TextInputType.text),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: colorsApp.colorwhiteapp,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {
                                bottomSheet.bottomsheetactive(context);
                              },
                              icon: Icon(
                                Icons.filter_alt_outlined,
                                color: colorsApp.colorgreyapp,
                              )),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24))),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 15, top: 20),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "To day",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: colorsApp.colorgreyapp),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                color: colorsApp.colorwhiteapp,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorsApp.colorgreyapp
                                        .withOpacity(0.3), // لون الظل مع شفافية
                                    offset: Offset(5.0, 5.0), // إزاحة الظل
                                    blurRadius: 5.0, // قيمة ضبابية الظل
                                    spreadRadius: 5.0, // انتشار الظل
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: ListTile(
                                leading: Container(
                                    height: 90,
                                    width: 60,
                                    child: Image.asset(
                                      "assets/images/activity1.png",
                                      fit: BoxFit.cover,
                                    )),
                                title: Text("Attendence Check"),
                                subtitle: Text("07.58 AM not yet"),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 15, top: 20),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Yesterday",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: colorsApp.colorgreyapp),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                color: colorsApp.colorwhiteapp,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorsApp.colorgreyapp
                                        .withOpacity(0.3), // لون الظل مع شفافية
                                    offset: Offset(5.0, 5.0), // إزاحة الظل
                                    blurRadius: 5.0, // قيمة ضبابية الظل
                                    spreadRadius: 5.0, // انتشار الظل
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: ListTile(
                                leading: Container(
                                    height: 90,
                                    width: 60,
                                    child: Image.asset(
                                      "assets/images/activity2.png",
                                      fit: BoxFit.cover,
                                    )),
                                title: Text("Payroll"),
                                subtitle: Text("September 2023"),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 15, top: 20),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Tuesday",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: colorsApp.colorgreyapp),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                color: colorsApp.colorwhiteapp,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorsApp.colorgreyapp
                                        .withOpacity(0.3), // لون الظل مع شفافية
                                    offset: Offset(5.0, 5.0), // إزاحة الظل
                                    blurRadius: 5.0, // قيمة ضبابية الظل
                                    spreadRadius: 5.0, // انتشار الظل
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: ListTile(
                                leading: Container(
                                    height: 90,
                                    width: 60,
                                    child: Image.asset(
                                      "assets/images/activity3.png",
                                      fit: BoxFit.cover,
                                    )),
                                title: Text("Payroll"),
                                subtitle: Text("September 2023"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
