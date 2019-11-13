import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_crawler/components/account/feature/state.dart';
import 'package:fish_redux_crawler/components/account/head/state.dart';

class MineState implements Cloneable<MineState> {
  @override
  MineState clone() {
    return MineState();
  }
}

MineState initState(Map<String, dynamic> args) {
  MineState mineState = MineState();
  return mineState;
}

// 1. 如果不继承ReselectMixin，会报错：Tried calling: call(Instance of 'MineState')
class HeadConnector extends ConnOp<MineState, HeadState>
    with ReselectMixin<MineState, HeadState> {
  @override
  HeadState computed(MineState state) {
    return HeadState();
  }

  // 如果返回null，会报错
  @override
  List factors(MineState state) {
    // TODO: implement factors
    return [];
  }
}


// 1. 如果不继承ReselectMixin，会报错：Tried calling: call(Instance of 'MineState')
class FeatureConnector extends ConnOp<MineState, FeatureState>
    with ReselectMixin<MineState, FeatureState> {
  @override
  FeatureState computed(MineState state) {
    // TODO: implement computed
    return FeatureState();
  }

  @override
  List factors(MineState state) {
    // TODO: implement factors
    return [];
  }

}
