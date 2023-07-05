import 'package:flutter/material.dart';
import 'package:testproject/Presentation/Screen/home/homescreen.dart';
import 'package:testproject/Presentation/Screen/home/profilescreen.dart';
import 'package:testproject/Presentation/Screen/home/searchscreen.dart';

class BriefProfile extends StatefulWidget {
  const BriefProfile({Key? key}) : super(key: key);

  @override
  _BriefProfileState createState() => _BriefProfileState();
}

class _BriefProfileState extends State<BriefProfile> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    SearchScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education_sharp),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Projects',
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }
}
