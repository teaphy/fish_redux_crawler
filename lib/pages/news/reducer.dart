import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NewsState> buildReducer() {
  return asReducer(
    <Object, Reducer<NewsState>>{
      NewsAction.action: _onAction,
    },
  );
}

NewsState _onAction(NewsState state, Action action) {
  final NewsState newState = state.clone();
  return newState;
}
