
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
               Text(
                  'Forget Password',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
             TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    label: const Text('Email'),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  style: const TextStyle(height: 1),
                ),
              SizedBox(height: 20),
             GestureDetector(
                    onTap: () {
                      //  Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(builder: (context) => const HomePage()),
                      // );
                    },
                    child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
            ],
          ),
        ),
      ),
    );
  }
}
