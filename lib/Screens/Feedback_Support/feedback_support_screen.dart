import 'package:flutter/material.dart';

class FeedbackSupportScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _feedbackController = TextEditingController();

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
                controller: _feedbackController,
                decoration: InputDecoration(labelText: 'Feedback'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your feedback';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle feedback submission
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
