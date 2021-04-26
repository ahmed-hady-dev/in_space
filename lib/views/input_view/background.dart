import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: ExactAssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
