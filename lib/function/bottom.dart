import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  int count = 0;
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //     color: Colors.white,
          TextButton(
            onPressed: () async {
              const url = 'https://www.gehu.ac.in/';
              final Uri _url = Uri.parse(url);

              await launchUrl(_url, mode: LaunchMode.externalApplication);
            },
            child: Image.asset('images/f.png', height: 300, width: 50),
          ),
          TextButton(
            onPressed: () async {
              const url = 'https://www.gehu.ac.in/';
              final Uri _url = Uri.parse(url);

              await launchUrl(_url, mode: LaunchMode.externalApplication);
            },
            child: Image.asset('images/twitter.png', height: 400, width: 50),
          ),
          TextButton(
            onPressed: () async {
              const url = 'https://www.gehu.ac.in/';
              final Uri _url = Uri.parse(url);

              await launchUrl(_url, mode: LaunchMode.externalApplication);
            },
            child: Image.asset('images/linkdin.png', height: 600, width: 50),
          ),
          TextButton(
            onPressed: () async {
              const url = 'https://www.gehu.ac.in/';
              final Uri _url = Uri.parse(url);

              await launchUrl(_url, mode: LaunchMode.externalApplication);
            },
            child: Image.asset('images/youtube.png', height: 160, width: 50),
          ),

          TextButton(
            onPressed: () async {
              const url = 'https://www.gehu.ac.in/';
              final Uri _url = Uri.parse(url);

              await launchUrl(_url, mode: LaunchMode.externalApplication);
            },
            child: Image.asset('images/instagram.png', height: 90, width: 50),
          ),
        ],
      ),
    );
  }
}
