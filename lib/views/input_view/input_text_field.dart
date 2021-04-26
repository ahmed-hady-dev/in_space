import 'package:flutter/material.dart';
import 'package:new_in_space/controllers/input_data_controller.dart';
import 'package:provider/provider.dart';

import '../../constanst.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      height: 60,
      padding: const EdgeInsets.only(left: 12),
      child: Center(
        child: Consumer<InputDataController>(
          builder: (context, input, child) => TextField(
            onChanged: (value) {
              input.input = double.parse(value);
            },
            style: TextStyle(
              fontSize: 25,
              color: Colors.black87,
            ),
            autofocus: false,
            maxLength: 5,
            textAlign: TextAlign.center,
            cursorColor: Colors.black,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.send,
            decoration: InputDecoration(
              counterText: "",
              hintText: 'KG',
              hintStyle: kTextFieldStyle,
              filled: true,
              fillColor: Colors.grey[50],
              focusColor: Colors.grey[50],
              enabledBorder: borderStyle,
              disabledBorder: borderStyle,
              focusedBorder: borderStyle,
            ),
          ),
        ),
      ),
    );
  }
}
