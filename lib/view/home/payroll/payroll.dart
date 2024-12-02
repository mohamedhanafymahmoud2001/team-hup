import 'package:flutter/material.dart';
import 'package:teamhup/componant/appbarsimple.dart';
import 'package:teamhup/componant/buttonapp.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';
import 'package:teamhup/provider/prov.dart';
import 'package:provider/provider.dart';

class Payroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Payroll();
  }
}

class _Payroll extends State<Payroll> {
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
          title: "Payroll",
          backgroundColor: colorsApp.colorwhiteapp,
        ),
        backgroundColor: colorsApp.colorwhiteapp,
        body: Consumer<Control>(builder: (context, val, child) {
          return Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      // height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: colorsApp.colorblackapp,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/background.png")),),
                    Container(
                      // height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: colorsApp.colorblackapp.withOpacity(0.0),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color:
                                            colorsApp.colorgreyapp.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(100)),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          textAlign: TextAlign.start,
                                          "Mike Cooper",
                                          style: TextStyle(
                                              color: colorsApp.colorwhiteapp,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          textAlign: TextAlign.start,
                                          "Marketing Officer",
                                          style: TextStyle(
                                            color: colorsApp.colorgreyapp,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          textAlign: TextAlign.start,
                                          "DE3824-MO4",
                                          style: TextStyle(
                                            color: colorsApp.colorgreyapp,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  CircleAvatar(
                                    backgroundColor: colorsApp.colorwhiteapp,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.download_outlined)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "DEC",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: colorsApp.colorwhiteapp,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Text(
                                        "September 2023",
                                        style:
                                            TextStyle(color: colorsApp.colorblackapp),
                                      ),
                                    )
                                  ],
                                )),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: colorsApp.colorwhiteapp,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(50),
                                            bottomRight: Radius.circular(50))),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 3,
                                      // color: Colors.red,
                                      child: ListView.builder(
                                          physics: NeverScrollableScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 20,
                                          itemBuilder: (context, i) {
                                            return Container(
                                              margin:
                                                  EdgeInsets.symmetric(horizontal: 5),
                                              width: 10,
                                              height: 3,
                                              color: colorsApp.colorwhiteapp,
                                            );
                                          }),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: colorsApp.colorwhiteapp,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            bottomLeft: Radius.circular(50))),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                textAlign: TextAlign.left,
                                "Earnings",
                                style: TextStyle(
                                    color: colorsApp.colorwhiteapp,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Basic salary",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$2.500,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Overtime pay",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$540,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.only(left: 40),
                                width: double.infinity,
                                child: Text(
                                  textAlign: TextAlign.left,
                                  "12 hours x \$45",
                                  style: TextStyle(
                                      color: colorsApp.colorwhiteapp,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10),
                                )),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Bonuses",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$100,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Reimbursements",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$61,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "Total earnings",
                                      style: TextStyle(
                                          color: colorsApp.colorwhiteapp,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "\$3.201,00",
                                      style: TextStyle(
                                          color: colorsApp.colorwhiteapp,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ])),
                            Divider(
                              color: colorsApp.colorgreyapp,
                              endIndent: 20,
                              indent: 20,
                              height: 40,
                              thickness: 0.3,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                textAlign: TextAlign.left,
                                "Deductions",
                                style: TextStyle(
                                    color: colorsApp.colorwhiteapp,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Income tax",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$30,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Health Insurance",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$45,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Retirement Contributions",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$35,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "Loan Repayments",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                  Expanded(child: Container()),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "\$75,00",
                                        style: TextStyle(
                                            color: colorsApp.colorwhiteapp,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      )),
                                ])),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "Total deductions",
                                      style: TextStyle(
                                          color: colorsApp.colorwhiteapp,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "\$195,00",
                                      style: TextStyle(
                                          color: colorsApp.colorwhiteapp,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ])),
                            Divider(
                              color: colorsApp.colorgreyapp,
                              endIndent: 20,
                              indent: 20,
                              height: 40,
                              thickness: 0.3,
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                child: Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "Net Salary",
                                      style: TextStyle(
                                          color: colorsApp.colorwhiteapp,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "\$3.006,00",
                                      style: TextStyle(
                                          color: colorsApp.colorwhiteapp,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22),
                                    ),
                                  ),
                                ])),
                            // Expanded(child: Container()),
                            Container(
                              width: double.infinity,
                              height: 14,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 20,
                                  itemBuilder: (context, i) {
                                    return Container(
                                      child: Image.asset("assets/images/payslip.png"),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ButtonApp(
                    title: "Done",
                    color: colorsApp.colorblackapp,
                    colorfont: colorsApp.colorwhiteapp,
                    width: double.infinity,
                    height: 50,
                    func: () {
                      Navigator.of(context).pop();
                    }),
              ),
            ],
          );
        }));
  }
}
