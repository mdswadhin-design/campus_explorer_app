import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/students_page.dart';
import 'screens/about_page.dart';
import 'screens/facility_detail_page.dart';
import 'screens/settings_page.dart';
import 'screens/logout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Explorer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/facility-detail': (context) => const FacilityDetailPage(),
        '/settings': (context) => const SettingsPage(),
        '/logout': (context) => const LogoutPage(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _changeTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(onTabChange: _changeTab),
      StudentsPage(onTabChange: _changeTab),
      AboutPage(onTabChange: _changeTab),
    ];

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.indigo,
        onTap: _changeTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Students'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About US'),
        ],
      ),
    );
  }
}