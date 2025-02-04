import 'package:flutter/material.dart';
import 'package:water_meter_app/register/signup.dart';
import 'package:water_meter_app/register/textfields.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0,vertical: 20.0),
              child: Text("Login",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 30.0,
            ),
            FieldText("Username/Email", secure: false,),
            FieldText("Password",secure: true,),
            ButtonText(text: "Login"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: Text("Sign Up now!!",
                  style: TextStyle(
                    color: Colors.black
                  ),),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
