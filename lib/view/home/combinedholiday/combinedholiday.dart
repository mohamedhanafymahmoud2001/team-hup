import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/dropdowenapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class CombinedHoliday extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CombinedHoliday();
  }
}

class _CombinedHoliday extends State<CombinedHoliday> {
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
        title: "Combined Holiday",
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
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Holiday type",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                DrobDowenButtonApp(
                    selectedValue: val.selectedValue,
                    dropdownItems: val.dropdownItems),
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
                    "Start date",
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
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "End date",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: InputApp2(
                      hint: "5 October 2023",
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Your Information",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "ُPhone number",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: InputApp2(
                      hint: "+201007988964",
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
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "ُLocation",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: InputApp2(
                      hint: "Cairo, Egypt",
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
                          title: "Submit request",
                          color: colorsApp.colorblackapp,
                          colorfont: colorsApp.colorwhiteapp,
                          width: double.infinity,
                          height: 50,
                          func: () {
                            showBottomSheet.bottomSheetPayslip(context);
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
