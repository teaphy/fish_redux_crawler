import 'package:fish_redux/fish_redux.dart';

class FeatureState implements Cloneable<FeatureState> {

  @override
  FeatureState clone() {
    return FeatureState();
  }
}

FeatureState initState(Map<String, dynamic> args) {
  return FeatureState();
}
