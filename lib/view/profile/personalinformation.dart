import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class PersonalInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PersonalInformation();
  }
}

class _PersonalInformation extends State<PersonalInformation> {
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet bottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Scaffold(
        backgroundColor: colorsApp.colorwhiteapp.withOpacity(0.95),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset("assets/images/background.png",fit: BoxFit.cover,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back,color: colorsApp.colorwhiteapp,)),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Icon(Icons.person,color: colorsApp.colorwhiteapp,),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Personal information  ",
                                style: TextStyle(
                                    color: colorsApp.colorwhiteapp,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              // Container(
                              //   margin: EdgeInsets.only(top: 5),
                              //   width: 250,
                              //   child: Text(
                              //     textAlign: TextAlign.center,
                              //     "Marketing Officer • DE3824-MO4 At Tricks. since 2021",
                              //     style: TextStyle(
                              //         color: colorsApp.colorwhiteapp.withOpacity(0.8),
                              //         fontSize: 14),
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      ),
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
                                Navigator.of(context).pushNamed("contactinformation");
                              },
                              leading: Icon(Icons.person),
                              title: Text("Content information"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              onTap: () { Navigator.of(context).pushNamed("address");},
                              leading: Icon(
                                Icons.pin_drop,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Address"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),ListTile(
                              onTap: () {},
                              leading: Icon(
                                Icons.credit_card,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Bank information "),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),ListTile(
                              onTap: () {
                                 Navigator.of(context).pushNamed("attachments");
                              },
                              leading: Icon(
                                Icons.file_copy,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Attachments"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              onTap: () {Navigator.of(context).pushNamed("hrlatter");},
                              leading: Icon(
                                Icons.email,
                                color: colorsApp.colorblackapp,
                              ),
                              title: Text("Hr letters "),
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
        ),
      );
    });
  }
}
