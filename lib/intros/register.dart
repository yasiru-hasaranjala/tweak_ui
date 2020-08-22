import 'package:flutter/material.dart';
import 'package:tweak/components/already_have_an_account_acheck.dart';
import 'package:tweak/components/rounded_button.dart';
import 'package:tweak/components/rounded_input_field.dart';
import 'package:tweak/components/rounded_password_field.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/intros/sign_in.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String name = '';
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.02),
                Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                new Container(
                  child: new Image.asset(
                    'assets/images/tw-1.jpg',
                    height: size.height * 0.3,
                  ),
                ),
                RoundedInputField(
                  hintText: "Your Name",
                  validator: (val) => val.isEmpty ? 'Enter Your Name': null,
                  onChanged: (val) {
                    setState(() => name = val);
                  },
                ),
                RoundedInputField2(
                  hintText: "Email",
                  validator: (val) => val.isEmpty ? 'Enter an valid Email': null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                RoundedPasswordField(
                  validator: (val) => val.length<6 ? 'Password should more than 6 Characters': null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                RoundedButton(
                  text: "SIGNUP",
                  press: () async {
                    if(_formKey.currentState.validate()){
                      setState(() {
                        loading = true;
                      });
                      dynamic result;
                      if(result==null){
                        setState(() {
                          error = 'please supply a valid email';
                          loading = false;
                        });
                      }
                    }
                  },
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  error,
                  style: TextStyle(color: kActiveIconColor, fontSize: 14),
                ),
                SizedBox(height: size.height * 0.02),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignIn();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
