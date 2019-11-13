import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction {
  switchIndex
}

class HomeActionCreator {
  static Action onSwitchIndex(int index) {
    return Action(HomeAction.switchIndex, payload: index);
  }
}
