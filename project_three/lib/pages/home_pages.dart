import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_three/pages/second_page.dart';
import 'package:project_three/pages/thirdpage.dart';
import 'package:project_three/pages/login_page.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    SecondPage(),
    thirdpage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Appoitment'),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.login, size: 30),
        ],
        onTap: onTap,
        index: currentIndex,
      ),

      // body: Container(color: Colors.blueAccent),

      body: pages[currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   onTap: onTap,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //     // BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      //   ],
      // ),

      // body: SafeArea(
      //     child: Center(
      //   child: ElevatedButton(
      //     child: Text("Continue"),
      //     onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return SecondPage();
      //       }));
      //     },
      //   ),
      // ))
    );
  }
}
