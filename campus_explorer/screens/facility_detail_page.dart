import 'package:flutter/material.dart';

class FacilityDetailPage extends StatelessWidget {
  const FacilityDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(data['title']!),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Image.asset(data['image']!, width: double.infinity, height: 280, fit: BoxFit.cover),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(data['desc']!, style: const TextStyle(fontSize: 18), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}