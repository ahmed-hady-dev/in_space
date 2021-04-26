import 'package:flutter/material.dart';
import 'package:new_in_space/views/input_view/alert_dialog.dart';
import 'package:provider/provider.dart';

import '../../controllers/input_data_controller.dart';
import '../../navigator/named_navigator.dart';
import '../../navigator/named_navigator_impl.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<InputDataController>(
      builder: (context, input, child) => TextButton(
        onPressed: () {
          if (input.input < 10.0 ||
              input.input >= 300.0 ||
              input.input == null ||
              input.runtimeType == String) {
            inputErrorNoSense(context);
          } else {
            NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            print(input.input.toString());
          }
        },
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.symmetric(vertical: 20.0),
          width: double.infinity,
          height: 60.0,
          child: Center(
            child: Text(
              'GET STARTED',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
