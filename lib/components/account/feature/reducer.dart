import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FeatureState> buildReducer() {
  return asReducer(
    <Object, Reducer<FeatureState>>{
      FeatureAction.action: _onAction,
    },
  );
}

FeatureState _onAction(FeatureState state, Action action) {
  final FeatureState newState = state.clone();
  return newState;
}
