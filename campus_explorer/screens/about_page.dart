import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutPage extends StatelessWidget {
  final Function(int) onTabChange;
  const AboutPage({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About US'), backgroundColor: Colors.indigo),
      drawer: AppDrawer(onTabChange: onTabChange),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/my_photo.jpg'),
                ),
                const SizedBox(height: 16),
                const Text('Your Full Name', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('ID: 22-XXXXX-X', style: TextStyle(fontSize: 16, color: Colors.grey)),
                const SizedBox(height: 4),
                const Text('Department: CSE', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 4),
                const Text('Daffodil International University', style: TextStyle(fontSize: 14, color: Colors.indigo)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}