import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(MineState state, Dispatch dispatch, ViewService viewService) {
  return Column(
    children: <Widget>[
      Text('asdfasdf'),
      viewService.buildComponent("headComponent"),
      viewService.buildComponent("featureComponent"),
    ],
  );
}
