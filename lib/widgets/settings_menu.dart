import 'package:flutter/material.dart';
import '/screens/settings_screen.dart';

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Settings Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () {
              // Notifications screen not implemented yet
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications screen coming soon!')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              // Profile screen not implemented yet
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile screen coming soon!')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('General Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
