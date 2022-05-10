import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gst_cal(),
    ),
  );
}

class gst_cal extends StatefulWidget {
  @override
  _gst_calState createState() => _gst_calState();
}

class _gst_calState extends State<gst_cal> {
  String pri = " ";
  int g_pri = 0;
  dynamic gs_pri = 0;
  dynamic gst_pri = 0;
  String temp = " ";
  Color c1 = Colors.grey;
  Color c2 = Colors.grey;
  Color c3 = Colors.grey;
  Color c4 = Colors.grey;
  Color c5 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "GST Calculator",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "ORIGINAL PRICE",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "$pri Rs.",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Text(
                          "GST",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                g_pri = int.parse(pri);
                                gs_pri = g_pri * (3 / 100);
                                setState(() {
                                  gst_pri = gs_pri;
                                  c1 = Colors.orange;
                                  c2 = Colors.grey;
                                  c3 = Colors.grey;
                                  c4 = Colors.grey;
                                  c5 = Colors.grey;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: c1,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text("3%"),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                g_pri = int.parse(pri);
                                gs_pri = g_pri * (5 / 100);
                                setState(() {
                                  gst_pri = gs_pri;
                                  c2 = Colors.orange;
                                  c1 = Colors.grey;
                                  c3 = Colors.grey;
                                  c4 = Colors.grey;
                                  c5 = Colors.grey;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: c2,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text("5%"),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                g_pri = int.parse(pri);
                                gs_pri = g_pri * (10 / 100);
                                setState(() {
                                  gst_pri = gs_pri;
                                  c3 = Colors.orange;
                                  c1 = Colors.grey;
                                  c2 = Colors.grey;
                                  c4 = Colors.grey;
                                  c5 = Colors.grey;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: c3,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text("10%"),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                g_pri = int.parse(pri);
                                gs_pri = g_pri * (18 / 100);
                                setState(() {
                                  gst_pri = gs_pri;
                                  c4 = Colors.orange;
                                  c1 = Colors.grey;
                                  c2 = Colors.grey;
                                  c3 = Colors.grey;
                                  c5 = Colors.grey;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: c4,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text("18%"),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                g_pri = int.parse(pri);
                                gs_pri = g_pri * (28 / 100);
                                setState(() {
                                  gst_pri = gs_pri;
                                  c5 = Colors.orange;
                                  c1 = Colors.grey;
                                  c2 = Colors.grey;
                                  c3 = Colors.grey;
                                  c4 = Colors.grey;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: c5,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text("28%"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "FINAL PRICE",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "$gst_pri Rs.",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CGST/SGST",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      "25",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                temp = pri;

                                setState(() {
                                  pri = "${temp}7";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}8";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}9";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                temp = pri;

                                setState(() {
                                  pri = "${temp}4";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}5";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}6";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                temp = pri;

                                setState(() {
                                  pri = "${temp}1";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}2";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}3";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                temp = pri;

                                setState(() {
                                  pri = "${temp}00";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "00",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}0";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}.";
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pri = " ";
                              gst_pri = 0;
                              c1 = Colors.grey;
                              c2 = Colors.grey;
                              c3 = Colors.grey;
                              c4 = Colors.grey;
                              c5 = Colors.grey;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange,
                            ),
                            child: Text(
                              "AC",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pri = pri.substring(0, pri.length - 1);
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange,
                            ),
                            child: Icon(Icons.arrow_left_outlined),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
