import 'package:fluro/fluro.dart';
import 'package:heilo_flutter/src/router/routes.dart';
import 'package:heilo_flutter/src/screens/student/level_select/level_select.dart';
import 'package:heilo_flutter/src/screens/student/onDemand/on_demand.dart';
import 'package:heilo_flutter/src/screens/student/select_services/select_services.dart';

class RouterHelper {
  static final FluroRouter router = FluroRouter();

  static final Handler _levelSelectHandler =
      Handler(handlerFunc: (context, parameters) => LevelSelect());
  static final Handler _selectServicesHandler =
      Handler(handlerFunc: (context, parameters) => SelectServices());
  static final Handler _onDemandHandler =
      Handler(handlerFunc: (context, parameters) => OnDemand());
  static final Handler _notFoundHandler =
      Handler(handlerFunc: (context, parameters) {
    print("No Router Found!");
    return null;
  });
  void setupRouter() {
    router.define(Routes.LEVEL_SELECT, handler: _levelSelectHandler);
    router.define(Routes.SELECT_SERVICES, handler: _selectServicesHandler);
    router.define(Routes.ON_DEMAND, handler: _onDemandHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
