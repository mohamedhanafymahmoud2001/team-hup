
import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/analytics/lineChartSample.dart';
import 'package:provider/provider.dart';

class Analytics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Analytics();
  }
}

class _Analytics extends State<Analytics> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet bottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Text(
                  "Analytics",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colorsApp.colorwhiteapp,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Monthly Accumulation",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: colorsApp.colorblackapp,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "September 2023",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: colorsApp.colorwhiteapp),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: colorsApp.colorwhiteapp,
                                    ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              "Presence",
                              style: TextStyle(
                                  color: colorsApp.colorgreyapp, fontSize: 13),
                            ),
                            Text(
                              "23",
                              style: TextStyle(
                                  color: colorsApp.colorblackapp, fontSize: 28),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              "Absence",
                              style: TextStyle(
                                  color: colorsApp.colorgreyapp, fontSize: 13),
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  color: colorsApp.colorblackapp, fontSize: 28),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              "Late",
                              style: TextStyle(
                                  color: colorsApp.colorgreyapp, fontSize: 13),
                            ),
                            Text(
                              "1.2h",
                              style: TextStyle(
                                  color: colorsApp.colorblackapp, fontSize: 28),
                            ),
                          ],
                        )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colorsApp.colorwhiteapp,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Attendence",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 41,
                                decoration: BoxDecoration(
                                  color: colorsApp.colorwhiteapp,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: colorsApp.colorblackapp, width: 0.5),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    maxLines: 1,
                                    "1W",
                                    style: TextStyle(
                                        color: colorsApp.colorgreyapp,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 41,
                                decoration: BoxDecoration(
                                  color: colorsApp.colorblackapp,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: colorsApp.colorblackapp, width: 0.5),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    maxLines: 1,
                                    "1M",
                                    style: TextStyle(
                                        color: colorsApp.colorwhiteapp,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 41,
                                decoration: BoxDecoration(
                                  color: colorsApp.colorwhiteapp,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: colorsApp.colorblackapp, width: 0.5),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    maxLines: 1,
                                    "1Y",
                                    style: TextStyle(
                                        color: colorsApp.colorgreyapp,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "97.5%",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: colorsApp.colorfontgreen.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.moving,
                                color: colorsApp.colorfontgreen,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "52 \%",
                                style: TextStyle(
                                    color: colorsApp.colorfontgreen,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          child: Text(
                            "Last month : 92.5%",
                            style: TextStyle(
                                fontSize: 13, color: colorsApp.colorgreyapp),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 300,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: LineChartSample(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  "Key Perfomance Indicator",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.all(10),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: colorsApp.colorwhiteapp,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "September - Download",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.download_outlined)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
    });
  }
}
