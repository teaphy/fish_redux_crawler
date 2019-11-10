import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_crawler/db/accont_provider.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.login: _onLogin,
  });
}

void _onLogin(Action action, Context<LoginState> ctx) async {
  var accountProvider = AccountProvider();
  String mobile = ctx.state.usernameController.text.toString();
  String password = ctx.state.passwordController.text.toString();

  var userPro = await accountProvider.queryByMobile(mobile);

  if (null == userPro) {
    Fluttertoast.showToast(msg: "账号不存在");
  } else if (password != userPro.password) {
    Fluttertoast.showToast(msg: "密码输入错误");
  } else {
    Fluttertoast.showToast(msg: "登录成功");
    // go to HomePage
    Navigator.of(ctx.context).pushNamed("homePage");
  }
}
