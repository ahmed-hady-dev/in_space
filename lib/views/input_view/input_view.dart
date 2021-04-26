import 'package:flutter/material.dart';

import 'start_button.dart';
import 'background.dart';
import 'in_space_actor.dart';
import 'input_text_field.dart';

class InputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Stack(
      children: [
        Background(height: height, width: width),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InSpaceActor(width: width, height: height),
                Spacer(),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "ENTER YOUR WEIGHT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 3),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      InputTextField(),
                      SizedBox(height: height * 0.05),
                      StartButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
