import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 48.0,
                      ),
                      child: TextField(
                        controller: state.usernameController,
                        decoration: InputDecoration(
                            labelText: 'your name',
                            hintText: 'input your name'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 48.0,
                      ),
                      child: TextField(
                        controller: state.passwordController,
                        decoration: InputDecoration(
                            labelText: 'your password',
                            hintText: 'input your word'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: RaisedButton(
                        onPressed: () => dispatch(LoginActionCreator.onLogin()),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Login'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    child: Text(
                      '忘记密码',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  Container(
                    height: 12,
                    width: 1,
                    color: Colors.grey,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.of(viewService.context).pushNamed("registerPage"),
                    child: Text(
                      '用户注册',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
  );
}
