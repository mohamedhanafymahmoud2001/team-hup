import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/boarding/board.dart';
import 'package:provider/provider.dart';

class ContactInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactInformation();
  }
}

class _ContactInformation extends State<ContactInformation> {
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
                                "Personal information  ",
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
                                  "Content information",
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Text("Personal",
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

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, ),
                        child: Text("Mobile",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("+987556792")),
                        Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Email",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("Mikecooper@gmail.com")),
                          ],
                        ),
                      ), 
                      //General information 
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Text("General information ",
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

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, ),
                        child: Text("Site",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("Head office")),

                        
                        Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Departments",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("Head office")),
                        
                        Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Section ",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("Branding & Marketing")),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Position",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("officer")),
                      
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Direct Manger",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("Salah al-ahmed")),
                        
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Hiring Dtate",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("15/07/2024")),
                        
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Marital Status",
                            style: TextStyle(fontWeight: FontWeight.w500,
                                color: colorsApp.colorblackapp, fontSize: 15)),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorsApp.colorblackapp, width: 0.5),
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10)),
                        child:Text("Single")),
                          ],
                        ),
                      ),
                      ButtonApp(title: "Save", color: colorsApp.colorblackapp, colorfont: colorsApp.colorwhiteapp, width: double.infinity, height: 50, func: (){Navigator.of(context).pop();})
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
