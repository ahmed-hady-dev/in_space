import 'package:flutter/material.dart';

import '../components/back_icon_button.dart';
import '../input_view/background.dart';
import 'planet_listview.dart';

class HomeView extends StatelessWidget {
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
            appBar: AppBar(
              title: Text(
                'Your Weight On',
                style: TextStyle(
                  fontSize: 23.0,
                  letterSpacing: 3.0,
                ),
              ),
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: BackIconButton(),
            ),
            body: ListView(
              children: [
                PlanetListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
