import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/boarding/board.dart';
import 'package:provider/provider.dart';

class BankInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BankInformation();
  }
}

class _BankInformation extends State<BankInformation> {
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
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: colorsApp.colorwhiteapp,)),
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
                                  "Bank information ",
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
                        child: Text("Bank information",
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
                        child: Text("Bank Name",
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
                        child:Text("Commercial Bank of kuwait")),

                        
                        Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Bank Branch",
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
                        child:Text("Main Branch")),
                        
                        Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("Account Number",
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
                        child:Text("9839402004-9")),

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text("IBAN Number",
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
                        child:Text("KW2I2R3U424I0I409882048")),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      ButtonApp(title: "Save", color: colorsApp.colorblackapp, colorfont: colorsApp.colorwhiteapp, width: double.infinity, height: 50, func: (){})
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
