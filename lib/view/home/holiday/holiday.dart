import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/dropdowenapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Holiday extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Holiday();
  }
}

class _Holiday extends State<Holiday> {
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return  Consumer<Control>(builder: (context, val, child) {
        return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
      centerTitle: true,
      title: Text("Holiday"),
      leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back)),
      
                backgroundColor: colorsApp.colorwhiteapp,
                bottom:
                          TabBar(
                          
                          labelColor: colorsApp.colorblackapp, 
                            onTap: (value){
                              val.changeHoliday(value);
                            },
                            indicatorColor: colorsApp.colorblueapp, tabs: [
                        Tab(child:  Text("Paid leave")
                        ),
                        Tab(child:  Text("UnPaid leave")),
                      ]),
              ),
          backgroundColor: colorsApp.colorwhiteapp,
          body: Consumer<Control>(builder: (context, val, child) {
            return Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10, left: 10, top: 20),
                    child: Text(
                      val.holiday=='paid'? "Select a category":"Reason",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  val.holiday=='paid'?Container(
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
                  ):
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: InputAppDescription(hint: "enter reason", controler: val.api.code1, keyboard: TextInputType.text)),
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
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        "ُEnd date",
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
                    //description
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Your Information",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
      
                    // Divider(
                    //   thickness: 10,
                    //   height: 50,
                    //   color: colorsApp.colorgreyapp.withOpacity(0.2),
                    // ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 100,
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
                          margin: EdgeInsets.only(top: 30, left: 10, right: 10),
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
                    )
                  ],
                ),
              ),
            );
          })),
    );});
  }
}
