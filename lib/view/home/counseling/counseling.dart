import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Counseling extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Counseling();
  }
}

class _Counseling extends State<Counseling> {
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Scaffold(
          backgroundColor: colorsApp.colorwhiteapp.withOpacity(0.9),
          body: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          child: Image.asset(
                            "assets/images/background.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: IconButton(
                                  onPressed: () {Navigator.of(context).pop();},
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: colorsApp.colorwhiteapp,
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 30),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/profilegirl.jpg"),
                                    radius: 30,
                                  ),
                                  title: Text(
                                    "Lendaa koper",
                                    style: TextStyle(
                                        color: colorsApp.colorwhiteapp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "HR Manger • DE3824-MO4",
                                    style: TextStyle(
                                        color: colorsApp.colorwhiteapp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                ///chat
                Expanded(
                    child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Yesterday ",
                            style: TextStyle(
                                fontSize: 12, color: colorsApp.colorgreyapp),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 15, right: 50, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/profilegirl.jpg"),
                                      radius: 25,
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: colorsApp.colorwhiteapp,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Text(
                                        "Hello ! Nazrul How are you?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: colorsApp.colorblackapp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 55),
                                child: Text(
                                  "09:25 AM",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: colorsApp.colorgreyapp),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          margin:
                              EdgeInsets.only(left: 50, right: 15, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: colorsApp.colorblueapp,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Text(
                                    "Hello ! Nazrul How are you?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: colorsApp.colorwhiteapp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Text(
                                  "09:25 AM",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: colorsApp.colorgreyapp),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
                Container(
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.link)),
                      Expanded(
                          child: SizedBox(
                        height: 60,
                        child: InputMessage(
                            hint: "Write Your Massage here ",
                            controler: val.api.message,
                            icon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.copy,
                                  size: 20,
                                )),
                            keyboard: TextInputType.text),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic_none)),
                    ],
                  ),
                )
              ],
            ),
          ));
    });
  }
}
