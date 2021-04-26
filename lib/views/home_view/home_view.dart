import 'package:flutter/material.dart';

import '../input_view/background.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Stack(
      children: [
        Background(height: height, width: width),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [Text('hi')],
          ),
        ),
      ],
    );
  }
}
