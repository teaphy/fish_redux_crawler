import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum RegisterAction { register }

class RegisterActionCreator {
  static Action onRegister() {
    return const Action(RegisterAction.register);
  }
}
