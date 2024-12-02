import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/boarding/board.dart';
import 'package:provider/provider.dart';

class HrLatter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HrLatter();
  }
}

class _HrLatter extends State<HrLatter> {
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
                      IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back,color: colorsApp.colorwhiteapp,)),
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
                                  "Hr latter ",
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
            Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 0, top: 10,left: 10),
                        child: Text("Hr latter",
                            style: TextStyle(
                                color: colorsApp.colorgreyapp, fontSize: 14)),
                      ),
            Expanded(
              child: MaterialButton(onPressed: (){},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hr.png"),
                      Text(
                        textAlign: TextAlign.center,
                        "Ooops............ There is Not Data. \n Be happy on your work!")
                    ],
                  )),
              ))]));});}}
