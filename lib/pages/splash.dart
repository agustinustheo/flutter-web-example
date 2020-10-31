import 'package:DiantarAje/bloc/auth/auth_bloc.dart';
import 'package:DiantarAje/pages/home.dart';
import 'package:DiantarAje/pages/location.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    authBloc.restoreSession();
    return HomePage();
    // return StreamBuilder<bool> (
    //   stream: authBloc.isSessionValid,
    //   builder: (context, AsyncSnapshot<bool> snapshot){
    //   if (snapshot.hasData && snapshot.data) return HomePage();
    //   else if (snapshot.hasData && !snapshot.data) return LoginPage();
    //   else return fullCircularProgress();
    // });
  }
}