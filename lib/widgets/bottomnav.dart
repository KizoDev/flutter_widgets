import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animatedText.dart';
import 'package:flutter_widgets/widgets/disimisible.dart';
import 'package:flutter_widgets/widgets/drawer.dart';
import 'package:flutter_widgets/widgets/snackbar.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int selectedindex = 0;

  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Contact'),
  //   Text('About'),
  // ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('bottom navigation'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          DrawerWidget(),
          disimisibleWidget(),
          snackbarWidgeet(),
          AnimatedTextwidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'About')
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.red,
        onTap: onTapped,
      ),
    );
  }
}
