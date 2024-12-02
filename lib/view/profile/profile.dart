import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

class _Profile extends State<Profile> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet bottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return  Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset("assets/images/background.png"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: colorsApp.colorgreyapp,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/profile.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: colorsApp.colorwhiteapp,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  color: colorsApp.colorblackapp,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Mike Cooper",
                        style: TextStyle(
                            color: colorsApp.colorwhiteapp,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 250,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Marketing Officer • DE3824-MO4 At Tricks. since 2021",
                          style: TextStyle(
                              color: colorsApp.colorwhiteapp.withOpacity(0.8),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            //body
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Text("Personal",
                            style: TextStyle(
                                color: colorsApp.colorgreyapp, fontSize: 14)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed("personalinformation");
                              },
                              leading: Icon(Icons.person),
                              title: Text("Personal information  "),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed("payroll");
                              },
                              leading: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black, // الخلفية السوداء
                                  ),
                                  child: Icon(
                                    Icons.attach_money,
                                    color: colorsApp.colorwhiteapp,
                                  )),
                              title: Text("Financial "),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                          ],
                        ),
                      ),
                      //General
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Text("General",
                            style: TextStyle(
                                color: colorsApp.colorgreyapp, fontSize: 14)),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: colorsApp.colorwhiteapp,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            ListTile(
                              
                              leading: Container(
                                  child: Image.asset(
                                      "assets/images/faceicon.png")),
                              title: Text("Face Verification"),
                              trailing: Switch(
                                  trackOutlineColor: WidgetStateProperty.all(
                                      colorsApp.colorwhiteapp),
                                  inactiveThumbColor: colorsApp.colorwhiteapp,
                                  inactiveTrackColor:
                                      colorsApp.colorgreyapp.withOpacity(0.3),
                                  activeTrackColor: colorsApp.colorblackapp,
                                  value: false,
                                  onChanged: (value) {}),
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed("notification");
                              },
                              leading: Icon(
                                Icons.notifications,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Notification"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              onTap: () {
                                bottomSheet.bottomsheetlangoage(context);
                              },
                              leading: Icon(
                                Icons.language,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Language"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.dark_mode,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Dark Mode"),
                              trailing: Switch(
                                  trackOutlineColor: WidgetStateProperty.all(
                                      colorsApp.colorwhiteapp),
                                  inactiveThumbColor: colorsApp.colorwhiteapp,
                                  inactiveTrackColor:
                                      colorsApp.colorgreyapp.withOpacity(0.3),
                                  activeTrackColor: colorsApp.colorblackapp,
                                  value: false,
                                  onChanged: (value) {}),
                            ),
                          ])),
                      //aboat
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        child: Text("About",
                            style: TextStyle(
                                color: colorsApp.colorgreyapp, fontSize: 14)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: colorsApp.colorwhiteapp,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {},
                              leading: Icon(
                                Icons.help,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Help Center"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              onTap: () {},
                              leading: Icon(Icons.privacy_tip),
                              title: Text("Privacy Policy "),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
    });
  }
}
