import 'package:DiantarAje/bloc/auth/auth_bloc.dart';
import 'package:DiantarAje/helpers/navigator_helper.dart';
import 'package:DiantarAje/helpers/validator_helper.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:DiantarAje/widgets/button_widget.dart';
import 'package:DiantarAje/widgets/container_widget.dart';
import 'package:DiantarAje/widgets/textfield_widget.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email, _password, _username;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: CardContainer(
        child:Form(
          key: _formKey,
          child: Column(
            children: [
              title('Register'),
              SizedBox(height: 10.0),
              Subtitle(text: 'Create a new account'),
              SizedBox(height: 50.0),
              textField("Enter username", validator: (input) => ValidatorHelper.validateUsername(input),
                prefixIcon: Icon(Icons.person), onChanged: (input) => _username = input),
              SizedBox(height: 7.0),
              textField("Enter email", validator: (input) => ValidatorHelper.validateEmail(input),
                prefixIcon: Icon(Icons.email), onChanged: (input) => _email = input),
              SizedBox(height: 7.0),
              textField("Enter password", validator: (input) => ValidatorHelper.validatePassword(input),
                isPassword: true, prefixIcon: Icon(Icons.lock), onChanged: (input) => _password = input),
              SizedBox(height: 7.0),
              textField("Re-enter password", validator: (input) => ValidatorHelper.isPasswordMatch(_password, input),
                  isPassword: true, prefixIcon: Icon(Icons.lock)),
              SizedBox(height: 30.0),
              TextLink(text: "Have an account? Login here",
                  function: () => NavigatorHelper.push(context, LoginPage(), "Login")),
              SizedBox(height: 30.0),
              FullButton(function: () => authBloc.submitCredentials(_formKey.currentState, context, _email, _password, body: {'username': _username}), text: "Register"),
            ]
          )
        ),
        boxConstraints: BoxConstraints(maxWidth: 400)
      )
    );
  }
}