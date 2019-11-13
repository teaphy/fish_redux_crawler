import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FeatureAction { action }

class FeatureActionCreator {
  static Action onAction() {
    return const Action(FeatureAction.action);
  }
}
