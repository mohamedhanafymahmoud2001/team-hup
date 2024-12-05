import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';

class FaceId extends StatefulWidget {
  @override
  _FaceIdState createState() => _FaceIdState();
}

class _FaceIdState extends State<FaceId> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Scaffold(
        // appBar: AppBar(title: Text('الكاميرا')),
        backgroundColor: colorsApp.colorwhiteapp,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: AnimatedSwitcher(
                    duration: Duration(seconds: 1), // مدة الأنيميشن
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation, // تأثير الانتقال (تلاشي)
                        child: child,
                      );
                    },
                    child: val.showFirstImage
                        ? Image.asset(
                            "assets/images/face.png",
                            key: ValueKey(1), // مفتاح فريد للصورة الأولى
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            "assets/images/accept.png",
                            key: ValueKey(2), // مفتاح فريد للصورة الثانية
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                SizedBox(
                  width: 110, // زيادة الحجم
                  height: 110, // زيادة الحجم
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: val.progress), // الحركة من 0 إلى 100%
                    duration: Duration(seconds: 3), // مدة الأنيميشن
                    builder: (context, value, child) {
                      return CircularProgressIndicator(
                        strokeWidth: 6, // سماكة الخط
                        value: value, // النسبة المتغيرة
                        color: colorsApp.colorfontgreen, // لون المؤشر
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(left: 30),
          height: 200,
          width: double.infinity,
          color: colorsApp.colorwhiteapp.withOpacity(0.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 70,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colorsApp.colorgreyapp.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "Click this button to start, and ensure your camera is set up and ready",
                  style:
                      TextStyle(fontSize: 13, color: colorsApp.colorwhiteapp),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  val.animatFaceId(context);
                  print("mohamed");
                  //showBottomSheet.bottomSheetCheckIn(context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: colorsApp.colorblackapp, width: 3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: colorsApp.colorblackapp,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
