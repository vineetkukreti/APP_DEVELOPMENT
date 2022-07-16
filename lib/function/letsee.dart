import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MysApp());
}

class MysApp extends StatelessWidget {
  const MysApp({Key? key}) : super(key: key);

// This widget is the root
// of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GFG(),
    );
  }
}

// This widget will be shown as the
// home page of your application.
class GFG extends StatefulWidget {
  const GFG({Key? key}) : super(key: key);

  @override
  State<GFG> createState() => _GFGState();
}

class _GFGState extends State<GFG> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GeeksForGeeks",
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Creating a icon button
          IconButton(
            iconSize: 100,
            icon: const Icon(
              Icons.school_rounded,
            ),
            // the method which is called
            // when button is pressed
            onPressed: () async {
              const url = 'https://www.gehu.ac.in/';
              final Uri _url = Uri.parse(url);

              await launchUrl(_url, mode: LaunchMode.externalApplication);
            },
          ),
          // SizedBox used as the separator
          const SizedBox(
            height: 40,
          ),
          // Text widget used to display count
        ],
      )),
    );
  }
}
