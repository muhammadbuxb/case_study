import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String selectedCountryCode = '+92';

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
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Create new account',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.grey.shade200,
                      child: const Icon(
                        Icons.add_a_photo_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      label: const Text('First Name'),
                      focusColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    style: const TextStyle(height: 1),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      label: const Text('Last Name'),
                      focusColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    style: const TextStyle(height: 1),
                  ),
                  const SizedBox(height: 20),
                  TextField(
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
                  const SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Enter your Phone',
                      label: const Text('Phone Number'),
                    ),
                    style: const TextStyle(height: 1),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      focusColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    style: const TextStyle(height: 1),
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                      onTap: () {
                        //    Navigator.of(context).pushReplacement(
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
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                ]))));
  }
}
