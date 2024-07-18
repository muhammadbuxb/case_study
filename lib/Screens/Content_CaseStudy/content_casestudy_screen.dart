import 'package:flutter/material.dart';

class ContentCaseStudiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Case Study 1'),
                subtitle: Text('Details about case study 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Case Study 2'),
                subtitle: Text('Details about case study 2'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('White Paper 1'),
                subtitle: Text('Details about white paper 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('White Paper 2'),
                subtitle: Text('Details about white paper 2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
