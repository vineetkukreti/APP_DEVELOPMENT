import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:van/function/bottom.dart';
import 'package:van/function/drawer.dart';
import 'package:van/screen/admission.dart';
import 'package:van/screen/contact.dart';
import 'package:van/screen/developer.dart';
import 'package:van/screen/gallary.dart';
import 'package:van/screen/home.dart';
import 'package:van/screen/website.dart';

void main() {
  runApp(aHomePage());
}

class aHomePage extends StatefulWidget {
  const aHomePage({Key? key}) : super(key: key);

  @override
  State<aHomePage> createState() => _aHomePageState();
}

class _aHomePageState extends State<aHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // child: SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset('images/8.png'),
                  Center(
                    child: Container(
                      height: 1300,
                      width: 350,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 10,
                            height: 30,
                          ),
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 280,
                                  child: Column(
                                    children: [
                                      Text(
                                        "29 GLORIOUS YEARS OF",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                      ),
                                      Text(
                                        "GRAPHIC ERA",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "The Graphic Era Educational Society, established in 1993, is a non-profit od self-respect in a just and equitable manner. At the initial phase Graphic Era Society established in 1997 Graphic Era Institute of Technology. Graphic Era Institute of Technology had the distinction of being first Self- financed educational institute in North India, offer engineering courses The Institute was the culmination of the dream of its visionary founder Prof. (Dr) Kamal Ghanshala to change the destiny of thousands of youth by providing an excellent and holistic professional education. He had visualized an educational hub that would cater to academic aspirations of innumerable young man and women and his vision took a concrete shape in the form of Graphic Era Institute",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 30,
                                      ),
                                      Text(
                                        "Faculty",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 20,
                                      ),
                                      Text(
                                        "Prof. Kamal Ghanshala",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
                                      ),
                                      Card(
                                        shadowColor: Colors.green,
                                        color: Colors.grey[100],
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/Prof-Dr.-kamal-Ghanshala.jpg',
                                                  height: 150,
                                                  width: 150,
                                                ),
                                                Container(
                                                  height: 150,
                                                  width: 100,
                                                  padding: const EdgeInsets.all(5),
                                                  child: Text('\nThe Founder of the Graphic Era Group and the President of Graphic Era '),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              child: Text('He is an engineer with Bachelors and Masters degree in Computer Science and Eng. He also holds a Ph.D. in Computer Science and Engineering.', textAlign: TextAlign.center),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Prof.(Dr.) J. Kumar",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
                                      ),
                                      Card(
                                        shadowColor: Colors.green,
                                        color: Colors.grey[100],
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/Prof.(Dr.)-J.min.png',
                                                  height: 150,
                                                  width: 150,
                                                ),
                                                Container(
                                                  height: 150,
                                                  width: 100,
                                                  padding: const EdgeInsets.all(5),
                                                  child: Text('\nProf. (Dr.) J. Kumar, was educated at G.B.Pant University of Agriculture '),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(' & Technology (GBPUA&T), Pantnagar, 1975-1983; M.Sc.1977, Ph.D. 1983; and was Post-doctoral Fellow, International Rice Research Institute, Philippines, 1993-1996.', textAlign: TextAlign.center),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 20,
                                      ),
                                    ],
                                  ),
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
        drawer: MyDrawer(),
      ),
      // ),
    );
  }
}
