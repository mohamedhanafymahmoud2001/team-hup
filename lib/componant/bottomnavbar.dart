// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:printapp/componant/colorsapp.dart';

// import '../provider/prov.dart';
// import 'package:provider/provider.dart';

// class BottomNavigationBarApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _BottomNavigationBarApp();
//   }
// }

// class _BottomNavigationBarApp extends State<BottomNavigationBarApp> {
//   ColorsApp colorsApp = new ColorsApp();
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return

//         //bottomNavigationBar:
//         Consumer<Control>(builder: (context, val, child) {
//       return CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         index: 2,
//         height: 60.0,
//         items: <Widget>[
//           Icon(
//             Icons.home_outlined,
//             size: 30,
//             color: colorsApp.colorblackapp,
//           ),
//           Icon(
//             Icons.pie_chart_outline,
//             size: 30,
//             color: colorsApp.colorblackapp,
//           ),
//           Icon(Icons.fingerprint,
//               size: 30, color: colorsApp.colorwhiteapp), // الحضور في المنتصف
//           Icon(
//             Icons.access_time_outlined,
//             size: 30,
//             color: colorsApp.colorblackapp,
//           ),
//           Icon(
//             Icons.person_outline,
//             size: 30,
//             color: colorsApp.colorblackapp,
//           ),
//         ],
//         color: colorsApp.colorwhiteapp,
//         buttonBackgroundColor: colorsApp.colorblackapp,
//         backgroundColor: colorsApp.colorgreyapp.withOpacity(0.0),
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 600),

//         onTap: (index) {
//           setState(() {
//             _page = index;
//             print(index);

//             if (index == 2) {}
//             if (index == 0) {}
//           });
//         },
//         letIndexChange: (index) => true,
//       );
//     });
//   }
// }


