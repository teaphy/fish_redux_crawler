import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction {
  login
}

class LoginActionCreator {
  static Action onLogin() {
    return const Action(LoginAction.login);
  }
}
