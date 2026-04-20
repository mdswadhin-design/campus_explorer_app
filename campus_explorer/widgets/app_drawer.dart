import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onTabChange;
  const AppDrawer({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text(
              'Campus Explorer',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              onTabChange(0);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Students'),
            onTap: () {
              Navigator.pop(context);
              onTabChange(1);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About US'),
            onTap: () {
              Navigator.pop(context);
              onTabChange(2);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/logout');
            },
          ),
        ],
      ),
    );
  }
}