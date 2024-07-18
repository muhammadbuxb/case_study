import 'package:flutter/material.dart';

class SettingsPersonalizationScreen extends StatelessWidget {
  const SettingsPersonalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Notification Settings'),
            trailing: Switch(value: true, onChanged: (bool value) {}),
          ),
          ListTile(
            title: Text('Display Preferences'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to Display Preferences screen
            },
          ),
          ListTile(
            title: Text('Language Settings'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to Language Settings screen
            },
          ),
        ],
      ),
    );
  }
}
