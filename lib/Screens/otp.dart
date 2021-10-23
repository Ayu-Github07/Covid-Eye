// import 'package:covideye/Screens/register.dart';
import 'package:flutter/material.dart';

class OTPscreen extends StatelessWidget {
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
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "OTP Verification",
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
                    "We have sent your code on your registered mobile number/nyour registered mobile number is +91877085*****\n",
                    textAlign: TextAlign.center,
                  ),
                  buildTimer(),
                  SizedBox(
                    height: 65,
                  ),
                  OTPscreen1(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("The OTP will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: Color(0xFF3383CD),
            ),
          ),
        ),
      ],
    );
  }
}

class OTPscreen1 extends StatefulWidget {
  const OTPscreen1({Key? key}) : super(key: key);

  @override
  _OTPscreen1State createState() => _OTPscreen1State();
}

class _OTPscreen1State extends State<OTPscreen1> {
  late FocusNode pin1focusNode;
  late FocusNode pin2focusNode;
  late FocusNode pin3focusNode;
  late FocusNode pin4focusNode;
  late FocusNode pin5focusNode;
  late FocusNode pin6focusNode;

  @override
  void initState() {
    super.initState();
    pin1focusNode = FocusNode();
    pin2focusNode = FocusNode();
    pin3focusNode = FocusNode();
    pin4focusNode = FocusNode();
    pin5focusNode = FocusNode();
    pin6focusNode = FocusNode();
  }

  @override
  void dispose() {
    pin1focusNode.dispose();
    pin2focusNode.dispose();
    pin3focusNode.dispose();
    pin4focusNode.dispose();
    pin5focusNode.dispose();
    pin6focusNode.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  Widget OTPbox(bool t, FocusNode f1, FocusNode t1) {
    return SizedBox(
      width: 40,
      child: TextFormField(
        autofocus: t,
        focusNode: f1,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xFF3383CD),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xFF3383CD),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xFF3383CD),
            ),
          ),
        ),
        onChanged: (value) {
          if (f1 == t1) {
            pin6focusNode.unfocus();
          } else {
            nextField(value, t1);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OTPbox(true, pin1focusNode, pin2focusNode),
              OTPbox(false, pin2focusNode, pin3focusNode),
              OTPbox(false, pin3focusNode, pin4focusNode),
              OTPbox(false, pin4focusNode, pin5focusNode),
              OTPbox(false, pin5focusNode, pin6focusNode),
              OTPbox(false, pin6focusNode, pin6focusNode),
            ],
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
          TextButton(
              onPressed: () {},
              child: Text(
                "Resend OTP",
                style: TextStyle(fontSize: 10),
              ))
        ],
      ),
    );
  }
}
