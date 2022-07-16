import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:van/function/app_card.dart';
import 'package:van/function/bottom.dart';

void main() {
  runApp(WebsitePage());
}

class WebsitePage extends StatelessWidget {
  @override
  String _buttonText = "Click Here";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Website"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset("images/gehu-aerial-view.jpg"),
              Center(
                child: Container(
                  width: 350,
                  height: 600,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          height: 500,
                          child: Column(
                            children: [
                              Container(
                                height: 180,
                                child: Center(
                                  child: Image.asset('images/ad.jpg'),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              MyCard(),

//.............

                              const Text(
                                "Please visit the official site of Graphic Era hill University. ",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                child: Text(
                                  _buttonText,
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                                onPressed: () async {
                                  const url = 'https://www.gehu.ac.in/';
                                  final Uri _url = Uri.parse(url);

                                  await launchUrl(_url, mode: LaunchMode.externalApplication);
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
