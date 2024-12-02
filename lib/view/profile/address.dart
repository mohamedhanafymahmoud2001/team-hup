import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/boarding/board.dart';
import 'package:provider/provider.dart';

class Address extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Address();
  }
}

class _Address extends State<Address> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet bottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Scaffold(
        backgroundColor: colorsApp.colorwhiteapp.withOpacity(0.95),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset("assets/images/background.png",fit: BoxFit.cover,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){
                         Navigator.of(context).pop();
                      }, icon: Icon(Icons.arrow_back,color: colorsApp.colorwhiteapp,)),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Icon(Icons.person,color: colorsApp.colorwhiteapp,),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Personal information",
                                style: TextStyle(
                                    color: colorsApp.colorwhiteapp,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                width: 250,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Address",
                                  style: TextStyle(
                                      color: colorsApp.colorwhiteapp.withOpacity(0.8),
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //body
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      child: Text("Address",
                          style: TextStyle(
                              color: colorsApp.colorgreyapp, fontSize: 14)),
                    ),
                    
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 5, ),
                                child: Text("P.O.Box",
                                    style: TextStyle(fontWeight: FontWeight.w300,
                                        color: colorsApp.colorblackapp, fontSize: 12)),
                              ),
                              Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                                                  child:Text("0000")),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                       
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 5, ),
                                child: Text("Floor No .",
                                    style: TextStyle(fontWeight: FontWeight.w300,
                                        color: colorsApp.colorblackapp, fontSize: 12)),
                              ),
                              Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                                                  child:Text("0000")),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 5, ),
                                child: Text("Bldg No .",
                                    style: TextStyle(fontWeight: FontWeight.w300,
                                        color: colorsApp.colorblackapp, fontSize: 12)),
                              ),
                              Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                                                  child:Text("0000")),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.circular(10)),
                      child:Text("Street Name")),
                
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.circular(10)),
                      child:Text("Neighborhood")),
                    
                
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.circular(10)),
                      child:Text("Country")),
                
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                          color: colorsApp.colorwhiteapp,
                          borderRadius: BorderRadius.circular(10)),
                      child:Text("City")),
                      /////
                      Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 5, ),
                                child: Text("Zip Code",
                                    style: TextStyle(fontWeight: FontWeight.w300,
                                        color: colorsApp.colorblackapp, fontSize: 12)),
                              ),
                              Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                                                  child:Text("0000")),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                       
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 5, ),
                                child: Text("State",
                                    style: TextStyle(fontWeight: FontWeight.w300,
                                        color: colorsApp.colorblackapp, fontSize: 12)),
                              ),
                              Container(
                                                  width: double.infinity,
                                                  padding: EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                                                  child:Text("Text")),
                            ],
                          ),
                        ),
                        ]
                        )
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    ButtonApp(title: "Save", color: colorsApp.colorblackapp, colorfont: colorsApp.colorwhiteapp, width: double.infinity, height: 50, func: (){ Navigator.of(context).pop();})
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
