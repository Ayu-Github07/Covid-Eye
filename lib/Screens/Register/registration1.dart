// import 'package:covideye/Screens/login.dart';
import 'package:flutter/material.dart';

class Register1 extends StatelessWidget {
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
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Complete your profile",
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
            textfield("Full Name", Icons.account_circle_rounded,
                TextInputType.name, false),
            SizedBox(
              height: 30,
            ),
            textfield("Father's Name", Icons.account_circle_rounded,
                TextInputType.name, false),
            SizedBox(
              height: 30,
            ),
            textfield("Date of Birth", Icons.calendar_today,
                TextInputType.datetime, false),
            SizedBox(
              height: 30,
            ),
            textfield("Mobile Number", Icons.phone_android,
                TextInputType.number, false),
            SizedBox(
              height: 30,
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
                  "Register",
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
          ],
        ),
      ),
    );
  }
}
