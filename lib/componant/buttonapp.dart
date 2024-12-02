import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';

class ButtonApp extends StatelessWidget {
  ButtonApp(
      {super.key,
      required this.title,
      required this.color,
      required this.colorfont,
      required this.width,
      required this.height,
      required this.func});
  final String title;
  final Color color;
  final Color colorfont;
  final double width;
  final double height;
  final VoidCallback func;
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(5),
      onPressed: func,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 1)),
        child: Text(
          "$title",
          style: TextStyle(color: colorfont, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ButtonHome extends StatelessWidget {
  ButtonHome(
      {super.key,
      required this.title,
      required this.image,
      required this.color,
      required this.colorfont,
      required this.func});
  final String title;
  final Color color;
  final Color colorfont;
  final String image;
  final VoidCallback func;
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
            onPressed: func,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: color),
              child: Image.asset("$image"),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            "$title",
            style: TextStyle(color: colorfont),
          )
        ],
      ),
    );
  }
}

class ButtonCalender extends StatelessWidget {
  ButtonCalender(
      {super.key,
      required this.title,
      required this.color,
      required this.colorfont,
      required this.width,
      required this.height,
      required this.icon,
      required this.func});
  final String title;
  final Color color;
  final Color colorfont;
  final double width;
  final double height;
  final Widget icon;
  final VoidCallback func;
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(5),
      onPressed: func,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 1)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: icon),
            Text(
              "$title",
              style: TextStyle(color: colorfont, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

