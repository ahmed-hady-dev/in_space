import 'package:flutter/material.dart';

import '../views/details_view/details_view.dart';
import '../views/home_view/home_view.dart';
import '../views/input_view/input_view.dart';
import 'named_navigator.dart';

class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.INPUT_ROUTE:
        return MaterialPageRoute(builder: (_) => InputView());
      case Routes.HOME_ROUTE:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.DETAILS_ROUTE:
        return MaterialPageRoute(builder: (_) => DetailsView());
    }
    return MaterialPageRoute(builder: (_) => Container());
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.pop(result);
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean)
      return navigatorState.currentState.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);

    if (replace)
      return navigatorState.currentState
          .pushReplacementNamed(routeName, arguments: arguments);

    return navigatorState.currentState
        .pushNamed(routeName, arguments: arguments);
  }
}
