import 'package:flutter/material.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Board1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
        return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/board1.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                textAlign: TextAlign.center,
                "Effortless \n Attendance Tracking",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                textAlign: TextAlign.center,
                "Log your attendance effortlessly. Clock in, clock out – it's that simple. Focus on your work, and we'll take care of the rest",
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
