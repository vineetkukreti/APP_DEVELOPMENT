import 'package:flutter/material.dart';
import 'package:van/screen/login.dart';

void main() {
  runApp(SPage());
}

class SPage extends StatefulWidget {
  const SPage({Key? key}) : super(key: key);

  @override
  State<SPage> createState() => _SPageState();
}

class _SPageState extends State<SPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      // child: SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
                width: 30.0,
              ),
              Container(
                child: Text(
                  "Transforming Dreams into\n               Reality",
                  style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.red,
                    fontFamily: 'Anton',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 110.0,
                width: 10.0,
              ),
              Image.asset('images/gehu.png', height: 200, width: 200),
              SizedBox(
                height: 160.0,
                width: 100.0,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    " Dehradun | Bhimtaal | Haldawani ",
                    style: TextStyle(
                      letterSpacing: 1.0,
                      color: Colors.red,
                      fontFamily: 'Anton',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
