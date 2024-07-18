import 'package:case_study/Custom_widgets/custom_button.dart';
import 'package:case_study/Screens/Authentication/signin_screen.dart';
import 'package:case_study/Screens/Authentication/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonPrimary(
                text: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 18),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                width: 300,
                height: 60,
                Color: Colors.blue),
                SizedBox(height: 50,),
            ButtonPrimary(
                text: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 18),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                width: 300,
                height: 60,
                Color: Colors.blue),
            
           
          ],
        ),
      ),
    );
  }
}
