import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';

class LoginState implements Cloneable<LoginState> {
  TextEditingController usernameController;
  TextEditingController passwordController;

  @override
  LoginState clone() {
    return LoginState()
      ..usernameController = usernameController
      ..passwordController = passwordController;
  }
}

LoginState initState(Map<String, dynamic> args) {
  LoginState loginState = LoginState();

  loginState.usernameController = TextEditingController();
  loginState.passwordController = TextEditingController();

  return loginState;
}
