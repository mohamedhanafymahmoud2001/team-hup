import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/api.dart';

class Control extends ChangeNotifier {
  Api api = new Api();
  double sliderValue = 30.0;
  int screenBoard = 1;
  switchboard() {
    screenBoard += 1;
    sliderValue += 30.0;
    notifyListeners();
  }

  late Box languagebox = Hive.box("language");
  choseLanguage(String lan) {
    languagebox.put("language", "$lan");
    notifyListeners();
  }

  List homeButton1 = [
    {"title": "Payroll", "image": "assets/images/home1.png"},
    {"title": "Payslip", "image": "assets/images/home2.png"},
    {"title": "Counseling", "image": "assets/images/home3.png"},
    {"title": "Time Off", "image": "assets/images/home4.png"},
    {"title": "Calendar", "image": "assets/images/home5.png"},
    {"title": "Holiday", "image": "assets/images/home9.png"},
    {"title": "Resign", "image": "assets/images/home7.png"},
  ];
  List homeButton2 = [
    {"title": "Payroll", "image": "assets/images/home1.png"},
    {"title": "Payslip", "image": "assets/images/home2.png"},
    {"title": "Counseling", "image": "assets/images/home3.png"},
    {"title": "Time Off", "image": "assets/images/home4.png"},
    {"title": "Calendar", "image": "assets/images/home5.png"},
    {"title": "Advance", "image": "assets/images/home6.png"},
    {"title": "Resign", "image": "assets/images/home7.png"},
    // {"title": "Other", "image": "assets/images/home8.png"},
    {"title": "Holiday", "image": "assets/images/home9.png"},
    {"title": "Departures", "image": "assets/images/home10.png"},
    {"title": "Combined hday", "image": "assets/images/home11.png"},
    {"title": "Planning", "image": "assets/images/home12.png"},
  ];
  //bottom nav bar
  int activeIndex = 0;
  List<IconData> get iconList => [
        activeIndex == 0 ? Icons.home : Icons.home_outlined,
        activeIndex == 1 ? Icons.pie_chart : Icons.pie_chart_outline,
        activeIndex == 2 ? Icons.access_time : Icons.access_time_outlined,
        activeIndex == 3 ? Icons.person : Icons.person_outline,
      ];

  changeScreenByNavBar(int valu) {
    activeIndex = valu;
    notifyListeners();
  }

  List timeOff = ["Sick", "Vacation", "Maternity", "Personal Matters"];
  int category = 0;
  selectaCategory(int index) {
    category = index;
    notifyListeners();
  }

  String date = '';
  changedatepationt() {
    date = date;
    notifyListeners();
  }

  bool showvote = false;
  showVote(bool value) {
    showvote = value;
    notifyListeners();
  }

  String selectedValue = "Select";
  List<dynamic> dropdownItems = [
    'Select holiday tybe1',
    'Select holiday tybe2',
    'Select holiday tybe3',
    'Select holiday tybe4',
    'Select holiday tybe5',
    'Select holiday tybe6'
  ];

  String holiday = "unpaid";
  changeHoliday(int value) {
    if (value == 0) {
      holiday = 'paid';
    } else {
      holiday = 'unpaid';
    }
    notifyListeners();
  }

  bool showFirstImage = true;
  double progress = 0.0;
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  animatFaceId(BuildContext context) async {
    progress = 1.0;
    notifyListeners();
    await Future.delayed(Duration(seconds: 3));
    showFirstImage = !showFirstImage;
    notifyListeners();
    await Future.delayed(Duration(seconds: 1));
    showBottomSheet.bottomSheetCheckIn(context);
    notifyListeners();
    progress = 0.0;
    showFirstImage = !showFirstImage;
  }
}
