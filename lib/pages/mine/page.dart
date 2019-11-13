import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_crawler/components/account/feature/component.dart';
import 'package:fish_redux_crawler/components/account/head/component.dart';
import 'package:fish_redux_crawler/pages/mine/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'view.dart';

class MinePage extends Page<MineState, Map<String, dynamic>> {
  MinePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MineState>(
                adapter: null,
                slots: <String, Dependent<MineState>>{
                  'headComponent': HeadConnector() + HeadComponent(),
                  'featureComponent': FeatureConnector() + FeatureComponent()
                }),
            middleware: <Middleware<MineState>>[
            ],);

}
