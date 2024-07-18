import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Key Metric 1'),
                subtitle: Text('Details about key metric 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Key Metric 2'),
                subtitle: Text('Details about key metric 2'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Notification 1'),
                subtitle: Text('Details about notification 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Update 1'),
                subtitle: Text('Details about update 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
