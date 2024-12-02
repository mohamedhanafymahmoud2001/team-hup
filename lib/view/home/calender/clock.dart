
import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/home/calender/detailsDay.dart';
import 'package:provider/provider.dart';

class ContainerClock extends StatelessWidget {
  ContainerClock({
    super.key,
    required this.timeday,
    required this.details,
  });

  final List details;
  final List timeday;
  ColorsApp colorsApp = ColorsApp();

  /// Function to convert time to double
  double convertTimeToDouble(String time) {
    List<String> parts = time.split(':');
    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);
    print(hours + (minutes / 60));
    return hours + (minutes / 60);
  }

  
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
          return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            Container(
              height: 350,
              width: timeday.length*55, // ديناميكي بناءً على عدد العناصر
              child: Stack(
                children: [
                  ///here details day 
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      width: timeday.length*200,
                      height: 350,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: timeday.length,
                        itemBuilder: (context,i){return DetailsDay(timeday: timeday[i],);}),
                    ),
                    ////////////////////////////////////////
                  Stack(
                    children: List.generate(
                      details.length,
                      (index) => Positioned(
                        top: index%2 * 120.0+index*2, // مسافة رأسية بين العناصر
                        left: convertTimeToDouble(details[index]) * 46+40+convertTimeToDouble(details[index]), // الموضع الأفقي
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          width: 200,
                          height: 100,
                          padding: EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 3,
                                    color: colorsApp.colorblueapp,
                                  ),
                                  SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Clock In Time",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: colorsApp.colorblueapp
                                              .withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          "07.00 - 10.00",
                                          style: TextStyle(
                                              color: colorsApp.colorblueapp,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child:
                                        Image.asset("assets/images/home10.png"),
                                  )
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    "you need to presence through this app",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: colorsApp.colorgreyapp),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );});
  }
}

