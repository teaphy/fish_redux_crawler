import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(
    RegisterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Register'),
    ),
    body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.0,
        ),
        child: Form(
          child: Column(
            children: <Widget>[
              TextField(
                controller: state.usernameController,
                decoration: InputDecoration(
                    labelText: "your name", hintText: "input your name"),
              ),
              TextField(
                controller: state.passwordController,
                decoration: InputDecoration(
                    labelText: "your password",
                    hintText: "input your password"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: RaisedButton(
                  onPressed: () => dispatch(RegisterActionCreator.onRegister()),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Register'),
                ),
              )
            ],
          ),
        )),
  );
}
