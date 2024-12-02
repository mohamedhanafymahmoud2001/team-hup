import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Resign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Resign();
  }
}

class _Resign extends State<Resign> {
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
          title: "Resign",
          backgroundColor: colorsApp.colorwhiteapp,
        ),
        backgroundColor: colorsApp.colorwhiteapp,
        body: Consumer<Control>(builder: (context, val, child) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //celender
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      "Set your resignation date",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      "Set the date for up to 3 months in the future, in accordance with the company's notice period",
                      style: TextStyle(
                          fontSize: 14, color: colorsApp.colorgreyapp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: InputApp2(
                        hint: "Select the date",
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
                  Divider(
                    thickness: 7,
                    height: 30,
                    color: colorsApp.colorgreyapp.withOpacity(0.2),
                  ),
                  //description
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Reasons for resignation",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: InputAppDescription(
                        hint: "write your complete reason here...",
                        controler: val.api.advancemony,
                        keyboard: TextInputType.text),
                  ),
                  Divider(
                    thickness: 7,
                    height: 30,
                    color: colorsApp.colorgreyapp.withOpacity(0.2),
                  ),
                  //attachment
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Upload resign letter",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Company requires a resignation letter to assess the seriousness of the decision to resign.",
                      style: TextStyle(
                          fontSize: 14, color: colorsApp.colorgreyapp),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: colorsApp.colorblueapp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          color: colorsApp.colorblueapp,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Upload files",
                            style: TextStyle(
                                fontSize: 14,
                                color: colorsApp.colorblueapp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            title: "Submit",
                            color: colorsApp.colorblackapp,
                            colorfont: colorsApp.colorwhiteapp,
                            width: double.infinity,
                            height: 50,
                            func: () {
                              Navigator.of(context).pushNamed("resignnext");
                              // showBottomSheet.bottomSheetAdvance(context);
                            }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }));
  }
}
