import 'dart:math';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Notificat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Notificat();
  }
}

class _Notificat extends State<Notificat> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet bottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: colorsApp.colorbody.withOpacity(0.0),
          centerTitle: true,
          title: Text(
            "Notification",
            style: TextStyle(fontSize: 18),
          ),
          // leading: Icon(Icons.arrow_back),
        ),
        backgroundColor: colorsApp.colorbody.withOpacity(0.95),
        body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(itemBuilder: (context, i) {
            return MaterialButton(
              padding: EdgeInsets.all(5),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: i == 0
                      ? colorsApp.colorwhiteapp
                      : colorsApp.colorgreyapp.withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/profilegirl.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Add space between image and text
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the start
                        children: [
                          Row(
                            children: [
                              Expanded(
                                // To make sure text does not overflow
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  "has been accepted",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "1 min Ago",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            "The submitted application has been accepted",
                            style: TextStyle(
                              fontSize: 14,
                              color: colorsApp.colorgreyapp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      );
    });
  }
}
