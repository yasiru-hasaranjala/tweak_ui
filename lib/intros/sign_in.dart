import 'package:flutter/material.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/intros/register.dart';
import 'package:tweak/main/nav_menu.dart';
import 'package:tweak/components/already_have_an_account_acheck.dart';
import 'package:tweak/components/rounded_button.dart';
import 'package:tweak/components/rounded_input_field.dart';
import 'package:tweak/components/rounded_password_field.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({ this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.02),
                Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                new Container(
                  alignment: Alignment.center,
                  child: new Image.asset(
                    'assets/images/tw-1.jpg',
                    height: size.height * 0.35,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                RoundedInputField(
                  hintText: "Your Email",
                  validator: (val) => val.isEmpty ? 'Enter an valid Email': null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                RoundedPasswordField(
                  validator: (val) => val.length<6 ?
                  'Password should more than 6 Characters': null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NavMenu();
                        },
                      ),
                    );
                    /*
                    if(_formKey.currentState.validate()){
                      setState(() {
                        loading = true;
                      });
                      dynamic result;
                      if(result==null){
                        setState(() {
                          error = 'could not sign in with those credentials';
                        });
                      }
                    }

                     */
                  },
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  error,
                  style: TextStyle(color: kActiveIconColor, fontSize: 14),
                ),
                SizedBox(height: size.height * 0.02),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Register();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.04),
              ],
            ),
          )
        ),

      ),
    );
  }
}
