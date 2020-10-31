import 'package:DiantarAje/bloc/auth/auth_bloc.dart';
import 'package:DiantarAje/helpers/navigator_helper.dart';
import 'package:DiantarAje/helpers/validator_helper.dart';
import 'package:DiantarAje/pages/auth/register.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:DiantarAje/widgets/button_widget.dart';
import 'package:DiantarAje/widgets/container_widget.dart';
import 'package:DiantarAje/widgets/textfield_widget.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return background(cardContainer(Form(
        key: _formKey,
        child: Column(children: [
          title('Login'),
          SizedBox(height: 10.0),
          subtitle('Enter your email and password'),
          SizedBox(height: 50.0),
          textField("Enter email", validator: (input) => ValidatorHelper.validateEmail(input),
            prefixIcon: Icon(Icons.email), onChanged: (input) => _email = input),
          SizedBox(height: 7.0),
          textField("Enter password", validator: (input) => ValidatorHelper.validatePassword(input),
            isPassword: true, prefixIcon: Icon(Icons.lock), onChanged: (input) => _password = input),
          SizedBox(height: 30.0),
          textLink("Don't have an account? Register here",
              () => NavigatorHelper.push(context, RegisterPage(), "Register")),
          SizedBox(height: 30.0),
          fullButton(() => authBloc.submitCredentials(_formKey.currentState, context, _email, _password), text: "Login"),
        ]))));
  }
}