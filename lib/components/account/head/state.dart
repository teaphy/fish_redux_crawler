import 'package:fish_redux/fish_redux.dart';

class HeadState implements Cloneable<HeadState> {

  @override
  HeadState clone() {
    return HeadState();
  }
}

HeadState initState(Map<String, dynamic> args) {
  return HeadState();
}
