import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(FeatureState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 48,
    child: Text('Feature'),
  );
}
