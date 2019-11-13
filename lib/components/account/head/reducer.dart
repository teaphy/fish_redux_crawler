import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HeadState> buildReducer() {
  return asReducer(
    <Object, Reducer<HeadState>>{
      HeadAction.action: _onAction,
    },
  );
}

HeadState _onAction(HeadState state, Action action) {
  final HeadState newState = state.clone();
  return newState;
}
