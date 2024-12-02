import 'package:flutter/material.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Board2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
        return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/board2.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                textAlign: TextAlign.center,
                "Elevate \n Your Performance",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                textAlign: TextAlign.center,
                " Track your Key Performance Indicators (KPIs), set goals, and visualize your progress. Your career journey just got a whole lot clearer.",
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
