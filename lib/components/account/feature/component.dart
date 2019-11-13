import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FeatureComponent extends Component<FeatureState> {
  FeatureComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FeatureState>(
                adapter: null,
                slots: <String, Dependent<FeatureState>>{
                }),);

}
