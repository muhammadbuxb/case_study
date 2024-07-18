import 'package:flutter/material.dart';

class ProposalEngagementHubScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _proposalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _proposalController,
                decoration: InputDecoration(labelText: 'Request a Proposal'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your request';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle proposal request
                  }
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Engagement 1'),
                subtitle: Text('Details about engagement 1'),
              ),
              ListTile(
                title: Text('Engagement 2'),
                subtitle: Text('Details about engagement 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
