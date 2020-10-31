import 'dart:async';
import 'package:DiantarAje/bloc/auth/auth_service.dart';
import 'package:DiantarAje/widgets/alert_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc {
  String _tokenString = '';
  final _isSessionValid = StreamController<bool>();
  // For state, exposing only a stream which outputs data
  Stream<bool> get isSessionValid => _isSessionValid.stream;

  void dispose() {
    _isSessionValid.close();
  }

  void submitCredentials(FormState formState, BuildContext context, String email, String password, { Map<String, dynamic> body }) async{
    if (formState.validate()) {
      formState.save();
      try {
        String token = body == null ? (await AuthService.login(email, password))['token'] : (await AuthService.register(email, password, body))['token'];
        _openSession(token);
      } catch (ex) {
        if (ex is String) {
          alertError(context, ex);
        } else {
          alertError(context, "An exception occured");
        }
      }
    }
  }
  
  void restoreSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _tokenString = prefs.get('token');
    if (_tokenString != null && _tokenString.length > 0) {
      _isSessionValid.sink.add(true);
    } else {
      _isSessionValid.sink.add(false);
    }
  }

  void _openSession(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    _tokenString = token;
    _isSessionValid.sink.add(true);
  }

  Future<String> getToken() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('token');
  }

  void closeSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    _isSessionValid.sink.add(false);
  }
}

final authBloc = AuthBloc();