import 'package:flutter/material.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/src/features/dashboard/presentation/dashboard_screen.dart';
import 'package:quizzo/src/features/profile/presentation/profile_screen.dart';
import 'package:quizzo/src/features/progress/presentation/progress_screen.dart' hide ProfileScreen;

class HomeScaffold extends StatefulWidget {
  final DatabaseRepository db;
  const HomeScaffold({super.key, required this.db});

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  int _selectedIndex = 1;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
    ProfileScreen(),
    Dashboard(db: widget.db),
    ProgressScreen(),
  ];
  }

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
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 32,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 32,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.equalizer, size: 32,), label: ''),
        ],
      ),
    );
  }
}