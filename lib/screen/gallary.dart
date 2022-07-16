import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(GalleryPage());
}

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  int leftdicenum = 1;

  void changeface() {
    setState(() {
      leftdicenum = Random().nextInt(7) + 1;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Gallery Panel'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          width: 350,
          child: Center(
            child: Row(
              children: [
                // Text("GAllerty"),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeface();
                    },
                    child: Image.asset('images/$leftdicenum.JPG'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
