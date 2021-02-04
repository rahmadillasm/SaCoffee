import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';
import 'package:sacoffe/validation.dart';
import 'signin_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child:
          ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                _iconSignUp(),
                _textField(),
                _buildButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _iconSignUp() {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          child: Image.asset(
            "assets/images/logo.png",
            width: 130,
            height: 130,
          ),
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        SizedBox(height: 12),
        Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: ColorPalette.primaryColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorPalette.primaryDarkColor),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "First Name",
              labelStyle: TextStyle(
                color: ColorPalette.labelTextColor,
              ),
              hintText: "Enter your first name",
              hintStyle: TextStyle(
                color: ColorPalette.hintTextColor,
              ),
            ),
            validator: Validation.validateFirstName,
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorPalette.primaryColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: ColorPalette.primaryDarkColor,
              )),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Last Name",
              labelStyle: TextStyle(
                color: ColorPalette.labelTextColor,
              ),
              hintText: "Enter your last name",
              hintStyle: TextStyle(
                color: ColorPalette.hintTextColor,
              ),
            ),
            validator: Validation.validateLastName,
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorPalette.primaryColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: ColorPalette.primaryDarkColor,
              )),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Email",
              labelStyle: TextStyle(
                color: ColorPalette.labelTextColor,
              ),
              hintText: "Enter your email",
              hintStyle: TextStyle(
                color: ColorPalette.hintTextColor,
              ),
            ),
            validator: Validation.validateEmail,
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorPalette.primaryColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: ColorPalette.primaryDarkColor,
              )),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Password",
              labelStyle: TextStyle(
                color: ColorPalette.labelTextColor,
              ),
              hintText: "Enter your password",
              hintStyle: TextStyle(
                color: ColorPalette.hintTextColor,
              ),
            ),
            obscureText: true,
            validator: Validation.validatePassword,
          ),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: RaisedButton(
              color: ColorPalette.primaryDarkColor,
              onPressed: () {
                if (formKey.currentState.validate()){
                  formKey.currentState.save();
                  print('Form Valid');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                }
                  print('Form Tidak Valid');
              },
              child: Text(
                "Sign Up",
                style: ThemeText.buttonText,
                textAlign: TextAlign.center,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Already have an account?",
              style: TextStyle(
                color: ColorPalette.primaryDarkColor,
                fontSize: 16,
              ),
            ),
            FlatButton(
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: ColorPalette.labelTextColor, fontSize: 16),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
