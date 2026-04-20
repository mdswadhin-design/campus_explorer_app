import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class StudentsPage extends StatelessWidget {
  final Function(int) onTabChange;
  const StudentsPage({super.key, required this.onTabChange});

  final List<Map<String, String>> students = const [
    {'name': 'Rahim Uddin', 'dept': 'CSE', 'image': 'assets/images/student1.jpg'},
    {'name': 'Karim Hossain', 'dept': 'EEE', 'image': 'assets/images/student2.jpg'},
    {'name': 'Fatema Begum', 'dept': 'BBA', 'image': 'assets/images/student3.jpg'},
    {'name': 'Nadia Islam', 'dept': 'CSE', 'image': 'assets/images/student4.jpg'},
    {'name': 'Tariq Ahmed', 'dept': 'Civil', 'image': 'assets/images/student5.jpg'},
    {'name': 'Sadia Khanam', 'dept': 'CSE', 'image': 'assets/images/student6.jpg'},
    {'name': 'Hasan Ali', 'dept': 'MBA', 'image': 'assets/images/student7.jpg'},
    {'name': 'Riya Sultana', 'dept': 'English', 'image': 'assets/images/student8.jpg'},
    {'name': 'Milon Sheikh', 'dept': 'CSE', 'image': 'assets/images/student9.jpg'},
    {'name': 'Priya Das', 'dept': 'Law', 'image': 'assets/images/student10.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Students'), backgroundColor: Colors.indigo),
      drawer: AppDrawer(onTabChange: onTabChange),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final s = students[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(s['image']!),
              radius: 28,
            ),
            title: Text(s['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Dept: ${s['dept']}'),
          );
        },
      ),
    );
  }
}