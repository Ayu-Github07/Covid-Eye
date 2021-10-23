import 'package:covideye/Screens/Register/registration1.dart';
import 'package:covideye/Screens/login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Register Yourself",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Complete your details for registering yourself",
                  textAlign: TextAlign.center,
                ),
                RegisterAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  _RegisterAccountState createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
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
          padding: EdgeInsetsDirectional.only(end: 30),
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            textfield("Email Id", Icons.mail_outline_rounded,
                TextInputType.emailAddress, false),
            SizedBox(
              height: 30,
            ),
            textfield(
                "Password", Icons.lock, TextInputType.visiblePassword, true),
            SizedBox(
              height: 30,
            ),
            textfield("Confirm Password", Icons.lock,
                TextInputType.visiblePassword, true),
            SizedBox(
              height: 30,
            ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register1()),
                  );
                },
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "Sign In ",
                    style: TextStyle(fontSize: 15, color: Color(0xFF11249F)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
