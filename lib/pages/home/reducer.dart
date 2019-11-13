import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.switchIndex: _onSwitchIndex,
    },
  );
}

HomeState _onSwitchIndex(HomeState state, Action action) {
  final HomeState newState = state.clone()
    ..index = action.payload;

  return newState;
}
