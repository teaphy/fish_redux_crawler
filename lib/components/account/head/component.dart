import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HeadComponent extends Component<HeadState> {
  HeadComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HeadState>(
                adapter: null,
                slots: <String, Dependent<HeadState>>{
                }),);

}
