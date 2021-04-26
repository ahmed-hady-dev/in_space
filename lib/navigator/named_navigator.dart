class Routes {
  static const SPLASH_ROUTE = "SPLASH_ROUTE";
  static const INPUT_ROUTE = "INPUT_ROUTE";
  static const HOME_ROUTE = "HOME_ROUTE";
  static const DETAILS_ROUTE = "DETAILS_ROUTE";
}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
