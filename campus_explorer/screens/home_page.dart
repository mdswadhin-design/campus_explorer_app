import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  final Function(int) onTabChange;
  const HomePage({super.key, required this.onTabChange});

  final List<Map<String, String>> facilities = const [
    {'title': 'Library', 'image': 'assets/images/library.jpg', 'desc': 'A vast collection of books and digital resources for all students.'},
    {'title': 'Cafeteria', 'image': 'assets/images/cafeteria.jpg', 'desc': 'Enjoy delicious meals and snacks in our spacious cafeteria.'},
    {'title': 'Playground', 'image': 'assets/images/playground.jpg', 'desc': 'Open ground for outdoor sports and recreational activities.'},
    {'title': 'Classrooms', 'image': 'assets/images/classroom.jpg', 'desc': 'Modern classrooms equipped with smart boards and AC.'},
    {'title': 'Labs', 'image': 'assets/images/lab.jpg', 'desc': 'State-of-the-art computer and science labs for practical learning.'},
    {'title': 'Auditorium', 'image': 'assets/images/auditorium.jpg', 'desc': 'A large hall for seminars, events, and cultural programs.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Campus Explorer'), backgroundColor: Colors.indigo),
      drawer: AppDrawer(onTabChange: onTabChange),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: facilities.length,
          itemBuilder: (context, index) {
            final item = facilities[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/facility-detail', arguments: item);
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(item['image']!, fit: BoxFit.cover, width: double.infinity),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}