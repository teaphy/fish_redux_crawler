import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HeadState> buildEffect() {
  return combineEffects(<Object, Effect<HeadState>>{
    HeadAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HeadState> ctx) {
}
