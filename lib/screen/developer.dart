import 'package:flutter/material.dart';

void main() => runApp(MyD());

class MyD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(radius: 80.00, backgroundImage: AssetImage('images/p.png')),
              ),
              Text(
                'Vineet Kukreti',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.blue[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontFamily: 'Anton',
                  letterSpacing: 2.5,
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
                child: Divider(
                  color: Colors.purple,
                ),
              ),
              Card(
                color: Colors.blue[100],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.blue[800],
                      ),
                      // SizedBox(
                      //   width: 10.0,
                      // ),
                      Text(
                        '7983207219',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: "Anton",
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                  // container
                  color: Colors.blue[100],
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 25,
                      color: Colors.blue[800],
                    ),
                    title: Text(
                      'vineeeti34@gmial.com',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontFamily: "Anton",
                        fontSize: 20.0,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
