import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class CheckInOut extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckInOut();
  }
}

class _CheckInOut extends State<CheckInOut> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarSimple(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
          title: "Attendence Check",
          backgroundColor: colorsApp.colorwhiteapp,
        ),
        backgroundColor: colorsApp.colorwhiteapp,
        body: Consumer<Control>(builder: (context, val, child) {
          return Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Clock In",
                      style: TextStyle(
                          fontSize: 14, color: colorsApp.colorgreyapp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "08.00 AM",
                      style: TextStyle(
                          fontSize: 30, color: colorsApp.colorfontgreen),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Image.asset("assets/images/face.png"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      "Face Recognition",
                      style: TextStyle(
                          fontSize: 22, color: colorsApp.colorblackapp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Ensure you are currently at the office and in well-lit surroundings for optimal face recognition.",
                      style: TextStyle(
                          fontSize: 14, color: colorsApp.colorgreyapp),
                    ),
                  ),
                  Expanded(flex: 2, child: Container()),
                  ButtonApp(
                      title: "Start Live Attendence",
                      color: colorsApp.colorblackapp,
                      colorfont: colorsApp.colorwhiteapp,
                      width: double.infinity,
                      height: 50,
                      func: () {
                        Navigator.of(context).pushNamed("faceid");
                      })
                ],
              ));
        }));
  }
}
