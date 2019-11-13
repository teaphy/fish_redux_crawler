import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NewsState> buildEffect() {
  return combineEffects(<Object, Effect<NewsState>>{
    NewsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NewsState> ctx) {
}
