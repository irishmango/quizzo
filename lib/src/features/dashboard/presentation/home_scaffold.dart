import 'package:flutter/material.dart';
import 'package:quizzo/src/features/dashboard/presentation/dashboard_screen.dart';
import 'package:quizzo/src/features/profile/presentation/profile_screen.dart';
import 'package:quizzo/src/features/progress/presentation/progress_screen.dart' hide ProfileScreen;

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  int _selectedIndex = 1;

  final List<Widget> _screens = [
    ProfileScreen(),
    Dashboard(),
    ProgressScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.equalizer), label: ''),
        ],
      ),
    );
  }
}