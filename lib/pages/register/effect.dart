import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_crawler/db/accont_provider.dart';
import 'package:fish_redux_crawler/model/account_profile.dart';
import 'action.dart';
import 'state.dart';

Effect<RegisterState> buildEffect() {
  return combineEffects(<Object, Effect<RegisterState>>{
    RegisterAction.register: _onRegister,
  });
}

void _onRegister(Action action, Context<RegisterState> ctx) async {
  var accountProvider = AccountProvider();
  AccountProfile accountProfile = AccountProfile(ctx.state.usernameController.text.toString(),
      ctx.state.usernameController.text.toString(),
      ctx.state.passwordController.text.toString());
  int index = await accountProvider.insertAccount(accountProfile);
  println("index: $index");
  List list = await accountProvider.queryAll();
  println("accounts: $list");
}
