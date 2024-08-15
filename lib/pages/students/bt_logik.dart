import 'package:flutter/material.dart';
import 'package:it_lectory_3/pages/chats_page.dart';
import 'package:it_lectory_3/pages/profile_page.dart';
import 'package:it_lectory_3/pages/students.dart';
import 'package:it_lectory_3/pages/students/bottom_for_students.dart';
import 'package:it_lectory_3/widgets/btb_logik.dart';

class Btlogick extends StatefulWidget {
  const Btlogick({super.key});

  @override
  State<Btlogick> createState() => _BtlogickState();
}

class _BtlogickState extends State<Btlogick> {
  int selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    THomeContent(),
    ChatPage(),
    ProfilePage(),
    StudentsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomBarrs(
        selectedIndex: selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}


