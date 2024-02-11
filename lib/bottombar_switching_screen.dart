import 'package:flutter/material.dart';
import 'package:invest_app/home_screen.dart';

class BottombarSwitchingScreen extends StatefulWidget {
  const BottombarSwitchingScreen({super.key});

  @override
  State<BottombarSwitchingScreen> createState() =>
      _BottombarSwitchingScreenState();
}

class _BottombarSwitchingScreenState extends State<BottombarSwitchingScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(
          0xff31A063,
        ),
        unselectedItemColor: const Color.fromARGB(255, 115, 113, 113),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Product',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Transaction',
            icon: Icon(Icons.transcribe),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
