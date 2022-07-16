import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:van/screen/realhome.dart';
import 'home.dart';
import '../util/routes.dart';

void main() {
  return runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150.0,
              ),
              Image.asset('images/website11.jpg', fit: BoxFit.fitWidth),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Center(
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your username",
                            labelText: 'Username',
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                        width: 10.0,
                      ),
                      ElevatedButton(
                        child: Text(
                          'login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 40),
                          primary: Colors.red,
                        ),
                        onPressed: () {
                          // we have to change our screen to login page to
                          // home

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => aHomePage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
