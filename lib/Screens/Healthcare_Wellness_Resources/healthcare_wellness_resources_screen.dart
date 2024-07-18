import 'package:flutter/material.dart';

class HealthcareWellnessResourcesScreen extends StatelessWidget {
  const HealthcareWellnessResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Article 1'),
                subtitle: Text('Details about article 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Guide 1'),
                subtitle: Text('Details about guide 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Industry Update 1'),
                subtitle: Text('Details about industry update 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Podcast 1'),
                subtitle: Text('Details about podcast 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
