import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/boarding/board.dart';
import 'package:provider/provider.dart';

class Attachments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Attachments();
  }
}

class _Attachments extends State<Attachments> {
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
                                  "Attachments ",
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
                        child: Text("Attachments",
                            style: TextStyle(
                                color: colorsApp.colorgreyapp, fontSize: 14)),
                      ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 5,
                  itemBuilder: (context,i){
                  return Card( 
                    color: colorsApp.colorwhiteapp,
                    child: ListTile(
                    leading: Image.asset("assets/images/pdf.png"),
                    title: Text("File Title.pdf",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: colorsApp.colorblackapp),) ,
                    subtitle: Text("313 KB . 31 Aug, 2022  ",style: TextStyle(fontSize: 12,color: colorsApp.colorgreyapp),),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.download_outlined,color: colorsApp.colorblueapp,)),
                  ),) ;
                })))]));});}}
