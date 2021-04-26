import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/input_data_controller.dart';
import 'navigator/named_navigator_impl.dart';
import 'views/input_view/input_view.dart';

void main() {
  runApp(Provider<InputDataController>(
    create: (context) => InputDataController(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InSpace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica',
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
      navigatorKey: NamedNavigatorImpl.navigatorState,
      home: AnimatedSplash(
        imagePath: 'assets/images/launch_image.png',
        duration: 2000,
        type: AnimatedSplashType.StaticDuration,
        home: InputView(),
      ),
    );
  }
}
