import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class TimeOff extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimeOff();
  }
}

class _TimeOff extends State<TimeOff> {
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: "Time Off",
        backgroundColor: colorsApp.colorwhiteapp,
      ),
      backgroundColor: colorsApp.colorwhiteapp,
      body: Consumer<Control>(builder: (context, val, child) {
        return Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10, left: 10, top: 20),
                  child: Text(
                    "Select a category",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: val.timeOff.length,
                    itemBuilder: (context, i) {
                      return MaterialButton(
                        padding: EdgeInsets.all(2),
                        onPressed: () {
                          val.selectaCategory(i);
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                          decoration: BoxDecoration(
                              color: val.category == i
                                  ? colorsApp.colorblackapp
                                  : colorsApp.colorwhiteapp,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: colorsApp.colorgreyapp,
                              )),
                          child: Text(
                            "${val.timeOff[i]}",
                            style: TextStyle(
                                color: val.category == i
                                    ? colorsApp.colorwhiteapp
                                    : colorsApp.colorgreyapp),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: 7,
                  height: 30,
                  color: colorsApp.colorgreyapp.withOpacity(0.2),
                ),
                //celender
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Set the duration",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Set date",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: InputApp2(
                      hint: "29 September 2023",
                      controler: val.api.advancemony,
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_month_outlined,
                          color: colorsApp.colorgreyapp,
                        ),
                      ),
                      keyboard: TextInputType.number),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 10, right: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Start Time",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            InputApp2(
                                hint: "12.00 PM",
                                controler: val.api.advancemony,
                                icon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: colorsApp.colorgreyapp,
                                  ),
                                ),
                                keyboard: TextInputType.number)
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 3, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "End Time",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            InputApp2(
                                hint: "01.00 PM",
                                controler: val.api.advancemony,
                                icon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: colorsApp.colorgreyapp,
                                  ),
                                ),
                                keyboard: TextInputType.number)
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Divider(
                  thickness: 7,
                  height: 30,
                  color: colorsApp.colorgreyapp.withOpacity(0.2),
                ),
                //description
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: InputAppDescription(
                      hint: "write your complete reason here...",
                      controler: val.api.advancemony,
                      keyboard: TextInputType.text),
                ),
                // Divider(
                //   thickness: 7,
                //   height: 30,
                //   color: colorsApp.colorgreyapp.withOpacity(0.2),
                // ),
                //attachment
                // Row(
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 10),
                //       child: Text(
                //         "Attachment",
                //         style: TextStyle(
                //             fontSize: 16, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //     Container(
                //       margin: EdgeInsets.symmetric(horizontal: 10),
                //       child: Text(
                //         "(optional)",
                //         style: TextStyle(
                //             fontSize: 12, color: colorsApp.colorgreyapp),
                //       ),
                //     ),
                //   ],
                // ),
                // Container(
                //   padding: EdgeInsets.all(15),
                //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(50),
                //       border: Border.all(color: colorsApp.colorblueapp)),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Icon(
                //         Icons.add_circle_outline,
                //         color: colorsApp.colorblueapp,
                //       ),
                //       Container(
                //         margin: EdgeInsets.symmetric(horizontal: 10),
                //         child: Text(
                //           "Upload files",
                //           style: TextStyle(
                //               fontSize: 14,
                //               color: colorsApp.colorblueapp,
                //               fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Divider(
                  thickness: 50,
                  height: 50,
                  color: colorsApp.colorgreyapp.withOpacity(0.2),
                ),
                Stack(
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      color: colorsApp.colorgreyapp.withOpacity(0.2),
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ButtonApp(
                          title: "Submit advance request",
                          color: colorsApp.colorblackapp,
                          colorfont: colorsApp.colorwhiteapp,
                          width: double.infinity,
                          height: 50,
                          func: () {
                            showBottomSheet.bottomSheetPayslip(context);
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
