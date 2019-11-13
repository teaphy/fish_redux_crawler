import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HeadState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 48,
    child: Text('Head'),
  );
}
