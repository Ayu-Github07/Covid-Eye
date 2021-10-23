import 'package:covideye/Screens/register.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Please enter your registered email id and \nReset your password",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  ForgotPassword(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool remember = false;
  late final bool text1;
  Widget textfield(String text, IconData ic, TextInputType type, obscureField) {
    return TextFormField(
      keyboardType: type,
      obscureText: obscureField,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: Colors.black54),
        hintText: "Enter Your " + text,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsetsDirectional.only(end: 25),
          child: Icon(
            ic,
            color: Colors.black12,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 45,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          textfield(
              "Email Id", Icons.email_sharp, TextInputType.emailAddress, false),
          SizedBox(
            height: 20,
          ),
          textfield(
              "New Password", Icons.lock, TextInputType.visiblePassword, true),
          SizedBox(
            height: 20,
          ),
          textfield("Password Again", Icons.lock, TextInputType.visiblePassword,
              true),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 20,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color(0xFF3383CD),
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text(
                  "Sign Up ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF3383CD),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
