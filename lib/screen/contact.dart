import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:van/function/bottom.dart';

void main() {
  return runApp(ContactPage());
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Text(
            "Contact Us",
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Image.asset(
                  'images/contact1.jpg',
                ),
              ),
              Container(
                width: 350,
                height: 650,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 30,
                      height: 30.0,
                    ),
                    Center(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(
                      width: 30,
                      height: 20.0,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 280,
                            height: 500,
                            child: Column(
                              children: [
                                Text("Call (Operational 9AM-6PM): 18008906027, 18002701280, 7500013334\nWhatsApp: +917617770113\nFor Alumni related queries/ document requests, please write to alumni@gehu.ac.in\nFor Educational Verification of Alumni (through Third Party Agencies), please write to alumni@gehu.ac.in "),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "For Dehradun Campus",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Graphic Era Hill University Bell Road, Clement Town Dehradun, Uttarakhand",
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "admissions@gehu.ac.in,\nenquiry@gehu.ac.in",
                                ),
                              ],
                            )),
                        const SizedBox(
                          width: 30,
                          height: 30.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
