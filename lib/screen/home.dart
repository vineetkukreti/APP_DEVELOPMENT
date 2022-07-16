import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:van/function/bottom.dart';
import 'package:van/screen/admission.dart';
import 'package:van/screen/contact.dart';
import 'package:van/screen/developer.dart';
import 'package:van/screen/gallary.dart';
import 'package:van/screen/website.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // child: SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("About"),
          elevation: 0.00,
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 20,
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset('images/5.JPG'),
                  ),
                  Center(
                    child: Container(
                      height: 1590,
                      width: 350,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 10,
                            height: 20,
                          ),
                          Text(
                            "About",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 280,
                                  height: 600,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Established vide Act No 12 of 2011 of Uttarakhand State Legislature\n",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                      ),
                                      Text("University under Section 2(f) of the UGC Act, 1956 set up under the aegis of Graphic Era Educational Society, Dehradun. Founded in 2011 Graphic Era Hill University is today widely known for its innovative and rigorous education which has nurtured professionals across industries and sectors in India and beyond. Graphic Era Hill University has adopted a global approach to education and research with focus on International perspectives and expertise. University has abiding commitment to excellence and pursues this relentlessly settling for nothing, but the best.", textAlign: TextAlign.center),
                                      SizedBox(
                                        width: 10,
                                        height: 20,
                                      ),
                                      Text(
                                        "OUR THREE CAMPUSES:",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(
                                        width: 30,
                                        height: 30.0,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 40,
                                        decoration: BoxDecoration(color: Colors.red),
                                        child: Center(
                                          child: Text(
                                            "Dehradun Campus",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                        height: 30.0,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 40,
                                        decoration: BoxDecoration(color: Colors.red),
                                        child: Center(
                                          child: Text(
                                            "Bhimtal Campus",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                        height: 30.0,
                                      ),
                                      Container(
                                        width: 200,
                                        height: 40,
                                        decoration: BoxDecoration(color: Colors.red),
                                        child: Center(
                                          child: Text(
                                            "Haldwani Campus",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: 300,
                                        height: 200,
                                        child: Center(
                                          child: Image.asset('images/mission.png'),
                                        )),
                                    Text(
                                      "Our Mission",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                      height: 20,
                                    ),
                                    Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 300,
                                            height: 160,
                                            child: Text(" Graphic Era Hill University Dehradun campus is located in the cantonment area, along the Rajaji National Park against the panoramic view of Shivalik Hills. The University offers perfect ambience for all academic pursuits, health growth and widening of mental horizons."),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width: 280,
                                        height: 200,
                                        child: Center(
                                          child: Image.asset('images/vision.png'),
                                        )),
                                    Text(
                                      "Our Vision",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                      height: 20,
                                    ),
                                    Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 280,
                                            height: 250,
                                            child: Text(" i National Park eThe campus boasts of a magnificent amphitheater, vibrant cafeterias, energetic playing fields and recreational grounds, a massive collection of books in a regal library, well-resourced, multifaceted laboratories, and computer centers, and dynamic lecture theatres.rowth and widening of mental horizons."),
                                          )
                                        ],
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
                ],
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
      // ),
    );
  }

  void changeSelected(int i) {
    setState(() {
      _selected = i;
    });
  }
}
