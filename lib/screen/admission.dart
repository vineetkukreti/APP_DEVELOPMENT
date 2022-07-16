import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:van/function/bottom.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  return runApp(AdmissionPage());
}

class AdmissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Admission Panel"),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('images/admission.jpg', scale: 1),
                  Container(
                    width: 350,
                    height: 600,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 30,
                            height: 30.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.red, padding: EdgeInsets.all(15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
                            child: const Text(
                              'Dehradun Campus',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () async {
                              const url = 'https://www.gehu.ac.in/content/gehu/en/admission-aid/dehradun.html';
                              final Uri _url = Uri.parse(url);

                              await launchUrl(_url, mode: LaunchMode.externalApplication);
                            },
                          ),
                          const SizedBox(
                            width: 30,
                            height: 30.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.red, padding: EdgeInsets.all(15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
                            child: const Text(
                              'Bhimtaal Campus',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () async {
                              const url = 'https://www.gehu.ac.in/content/gehu/en/admission-aid/bhimtal.html';
                              final Uri _url = Uri.parse(url);

                              await launchUrl(_url, mode: LaunchMode.externalApplication);
                            },
                          ),
                          const SizedBox(
                            width: 30,
                            height: 30.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.red, padding: EdgeInsets.all(15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
                            child: const Text(
                              'Haldwani Campus',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () async {
                              const url = 'https://www.gehu.ac.in/content/gehu/en/admission-aid/haldwani.html';
                              final Uri _url = Uri.parse(url);

                              await launchUrl(_url, mode: LaunchMode.externalApplication);
                            },
                          ),
                          const SizedBox(
                            width: 10,
                            height: 10,
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          const SizedBox(
                            width: 10,
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              "Education Loan",
                              style: TextStyle(
                                fontFamily: 'Anton',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 20,
                          ),
                          SingleChildScrollView(
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 280,
                                    height: 250,
                                    child: Text("We are pleased to inform you that Graphic Era Hill University has been approved by SBI for   the facility of Education loan to our students. The maximum eligibility of loan amount is Rs.10 lacs. For more details, please go through the attached letter. "),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomBar()
          ],
        ),

        //  initialRoute: '/home',
      ),
    );
  }
}
