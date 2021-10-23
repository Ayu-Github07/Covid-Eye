import 'package:covideye/Screens/Forget_password/forget_password.dart';
import 'package:covideye/Screens/otp.dart';
import 'package:covideye/Screens/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:covideye/Screens/splashscreen1.dart';

class Login extends StatelessWidget {
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
          "Sign In",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SignInForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sign in with your email id and password \nor continue with your mobile number",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          textfield(
              "Email id", Icons.email_sharp, TextInputType.emailAddress, false),
          SizedBox(
            height: 20,
          ),
          textfield(
              "Password", Icons.lock, TextInputType.visiblePassword, true),
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
                "Sign In",
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
            children: [
              Checkbox(
                value: remember,
                activeColor: Color(0xFF11249F),
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember Me"),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen()),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF11249F),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "OR",
              style: TextStyle(color: Colors.black26, fontSize: 12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPscreen()),
                );
              },
              child: Text(
                "Sign in with phone number",
                style: TextStyle(
                  color: Color(0xFF3383CD),
                  fontSize: 18,
                  decoration: TextDecoration.underline,
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
                  style: TextStyle(fontSize: 15, color: Color(0xFF11249F)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
