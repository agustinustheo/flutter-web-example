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
  String _email = '', _password = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: CardContainer(
        child:Form(
          key: _formKey,
          child: Column(
            children: [
              title('Login'),
              SizedBox(height: 10.0),
              Subtitle(text: 'Enter your email and password'),
              SizedBox(height: 50.0),
              textField("Enter email", validator: (input) => ValidatorHelper.validateEmail(input),
                prefixIcon: Icon(Icons.email), onChanged: (input) => _email = input),
              SizedBox(height: 7.0),
              textField("Enter password", validator: (input) => ValidatorHelper.validatePassword(input),
                isPassword: true, prefixIcon: Icon(Icons.lock), onChanged: (input) => _password = input),
              SizedBox(height: 30.0),
              NormalText(text:'Your Email = $_email'),
              NormalText(text: 'Your Password = $_password'),
              TextLink(text: "Don't have an account? Register here",
                  function: () => NavigatorHelper.push(context, RegisterPage(), "Register")),
              SizedBox(height: 30.0),
              FullButton(function:() {
                authBloc.submitCredentials(_formKey.currentState, context, _email, _password);
                setState(() {
                  _email = _email.toString();
                  _password = _password.toString();
                });
                }, text: "Login",),
            ]
          )
        ),
        boxConstraints: BoxConstraints(maxWidth: 400)
      )
    );
  }
}