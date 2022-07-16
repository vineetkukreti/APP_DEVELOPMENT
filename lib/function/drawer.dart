import 'package:flutter/material.dart';
import 'package:van/screen/admission.dart';
import 'package:van/screen/contact.dart';
import 'package:van/screen/developer.dart';
import 'package:van/screen/gallary.dart';
import 'package:van/screen/home.dart';
import 'package:van/screen/website.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  int _selected = 0;
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/gehu1.jpg'),
                //  fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(),
          ),
          Card(
            child: ListTile(
              selected: _selected == 0,
              leading: Icon(
                Icons.school_rounded,
                size: 28,
              ),
              title: Text(
                "About",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                changeSelected(0);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Card(
            child: ListTile(
              selected: _selected == 1,
              leading: Icon(
                Icons.book_rounded,
                size: 28,
              ),
              title: Text(
                "Admission",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                changeSelected(1);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdmissionPage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Card(
            child: ListTile(
              selected: _selected == 2,
              leading: Icon(
                Icons.wordpress_rounded,
                size: 28,
              ),
              title: Text(
                "Website",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                changeSelected(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebsitePage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Card(
            child: ListTile(
              selected: _selected == 3,
              leading: Icon(
                Icons.collections,
                size: 28,
              ),
              title: Text(
                "Gallery",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                changeSelected(3);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryPage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Card(
            child: ListTile(
              selected: _selected == 4,
              leading: Icon(
                Icons.contact_page,
                size: 28,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                changeSelected(4);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 150.0,
          ),
          Card(
            child: ListTile(
              selected: _selected == 2,
              leading: Icon(
                Icons.developer_mode,
                size: 28,
              ),
              title: Text(
                "Developer",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.red[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                changeSelected(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyD()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void changeSelected(int i) {
    setState(() {
      _selected = i;
    });
  }
}
