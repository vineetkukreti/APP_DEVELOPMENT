import 'package:flutter/material.dart';
import 'package:van/screen/contact.dart';
import 'package:van/screen/gallary.dart';
import 'package:van/screen/home.dart';
import 'package:van/screen/login.dart';
import 'package:van/screen/realhome.dart';
import 'package:van/screen/splashScreen.dart';
import 'package:van/util/routes.dart';
import 'package:van/screen/admission.dart';
import 'package:van/screen/website.dart';
import 'package:van/function/letsee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        // fontFamily: 'Lobster',
      ),

      //  initialRoute: '/home',
      // provides the intial page except '/'
      routes: {
        //'/': (context) => ContactPage(),
        // '/': (context) => LoginPage(),
        // '/': (context) => aHomePage(),

        //  '/': (context) => HomePage(),
        //'/': (context) => WebsitePage(),
        //'/': (context) => GalleryPage()
        '/': (context) => SPage(),
        // '/': (context) => MysApp(),
        // '/': (context) => AdmissionPage(),
        // MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        // "/login":(context)=>LoginPage(),
      },
    );
  }
}
