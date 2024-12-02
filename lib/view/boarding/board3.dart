import 'package:flutter/material.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Board3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/board3.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  textAlign: TextAlign.center,
                  "Seize Work-Life \n Balance",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  "Need a day off? Planning a holiday? We puts time-off requests at your fingertips. Take charge of your work-life balance with us",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
