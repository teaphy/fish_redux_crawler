import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class RegisterState implements Cloneable<RegisterState> {
  TextEditingController usernameController;
  TextEditingController passwordController;

  @override
  RegisterState clone() {
    return RegisterState()
      ..usernameController = usernameController
      ..passwordController = passwordController;
  }
}

RegisterState initState(Map<String, dynamic> args) {

  RegisterState registerState = RegisterState();

  registerState.usernameController = TextEditingController();
  registerState.passwordController = TextEditingController();

  return registerState;
}
