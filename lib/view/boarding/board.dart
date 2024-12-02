import 'package:flutter/material.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:teamhup/view/boarding/board1.dart';
import 'package:teamhup/view/boarding/board2.dart';
import 'package:teamhup/view/boarding/board3.dart';
import 'package:provider/provider.dart';

class Board extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Board();
  }
}

class _Board extends State<Board> {
  ColorsApp colorsApp = new ColorsApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsApp.colorbody,
      body: Consumer<Control>(builder: (context, val, child) {
        return Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, right: 20, left: 20),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 0.0), // إخفاء النقطة
                    overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 0.0), // إزالة تأثير التفاعل
                  ),
                  child: Slider(
                    activeColor: colorsApp.colorblackapp,
                    value: val.sliderValue,
                    min: 0,
                    max: 90,
                    divisions: 90,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(5),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("login");
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 16,
                        color: colorsApp.colorblackapp,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ),
              //////////
              Expanded(
                  child: AnimatedSwitcher(
                      duration: Duration(seconds: 1), // مدة الأنيميشن
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(
                            opacity: animation,
                            child: child); // أنيميشن التلاشي
                      },
                      child: val.screenBoard == 1
                          ? Board1()
                          : val.screenBoard == 2
                              ? Board2()
                              : Board3())),
              //////////
              Container(
                margin: EdgeInsets.all(10),
                child: ButtonApp(
                    title: "Next",
                    color: colorsApp.colorblackapp,
                    colorfont: colorsApp.colorwhiteapp,
                    width: double.infinity,
                    height: 54,
                    func: () {
                      if (val.screenBoard < 3) {
                        val.switchboard();
                      } else {
                        Navigator.of(context).pushReplacementNamed("login");
                      }
                    }),
              )
            ],
          ),
        );
      }),
    );
  }
}
