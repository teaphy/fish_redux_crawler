import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FeatureState> buildEffect() {
  return combineEffects(<Object, Effect<FeatureState>>{
    FeatureAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FeatureState> ctx) {
}
