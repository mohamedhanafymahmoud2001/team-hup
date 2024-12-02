import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';

class Appointments extends StatelessWidget {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 100, right: 20, left: 20),
      decoration: BoxDecoration(
          color: colorsApp.colorwhiteapp,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Today’s Overview",
                style: TextStyle(color: colorsApp.colorgreyapp),
              ),
              Expanded(child: Container()),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
          Text(
            "24 September 2023",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorsApp.colorgreyapp.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Clock In",
                          style: TextStyle(color: colorsApp.colorgreyapp),
                        ),
                        Text(
                          "08:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pushNamed("checkinout");
                          //showBottomSheet.bottomSheetCheckIn(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: colorsApp.colorwhiteapp,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Done at 07.58 AM",
                              style: TextStyle(color: Colors.green, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Clock Out",
                          style: TextStyle(color: colorsApp.colorgreyapp),
                        ),
                        Text(
                          "05:00 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        MaterialButton(onPressed: (){showBottomSheet.bottomSheetCheckOut(context);},
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: colorsApp.colorblackapp,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Not yet",
                              style: TextStyle(
                                  color: colorsApp.colorwhiteapp, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
