import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () => {
            Navigator.of(viewService.context).pushNamed("loginPage")
          },
          child: Text('登陆'),
        ),
        FlatButton(
          onPressed: () => {
            Navigator.of(viewService.context).pushNamed("registerPage")
          },
          child: Text('注册'),
        )
      ],
    ),
  ));
}
