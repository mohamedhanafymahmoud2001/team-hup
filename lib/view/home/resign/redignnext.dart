import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/inputapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class ResignNext extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResignNext();
  }
}

class _ResignNext extends State<ResignNext> {
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarSimple(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
          title: "Resign",
          backgroundColor: colorsApp.colorwhiteapp,
        ),
        backgroundColor: colorsApp.colorwhiteapp,
        body: Consumer<Control>(builder: (context, val, child) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                Container(
                  height: 180,
                  width: 180,
                  child: Image.asset("assets/images/resign.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Fiuh... you haven’t submit any resign letter. Be happy on your work!",
                    style:
                        TextStyle(fontSize: 14, color: colorsApp.colorgreyapp),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ButtonApp(
                      title: "Submit Resign Letter",
                      color: colorsApp.colorblackapp,
                      colorfont: colorsApp.colorwhiteapp,
                      width: double.infinity,
                      height: 50,
                      func: () {
                        showBottomSheet.bottomSheetResign(context);
                      }),
                )
              ],
            ),
          );
        }));
  }
}
