import 'package:fish_redux/fish_redux.dart';

class HomeState implements Cloneable<HomeState> {

  int index;

  @override
  HomeState clone() {
    return HomeState();
  }
}

HomeState initState(Map<String, dynamic> args) {
  HomeState homeState = HomeState();

  homeState.index = 0;

  return homeState;
}
