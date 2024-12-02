import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/view/home/calender/clock.dart';

class DetailsDay extends StatelessWidget{
  DetailsDay({super.key,
    required this.timeday
  });
  final String timeday;
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(child: Text("$timeday",style: TextStyle(color:colorsApp.colorgreyapp,fontSize: 13),),),
          Container(height: 10,width: 10,decoration: BoxDecoration(
            color: colorsApp.colorgreyapp.withOpacity(0.5),
            borderRadius: BorderRadius.circular(50)
          ),),
          Container(
            margin: EdgeInsets.only(),
            height:300, 
            width: 1.5, 
            color: colorsApp.colorgreyapp.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}