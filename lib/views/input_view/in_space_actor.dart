import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class InSpaceActor extends StatelessWidget {
  const InSpaceActor({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.8,
      height: height * 0.3,
      padding: const EdgeInsets.only(left: 18),
      child: FlareActor(
        'assets/images/inSpaceFloating.flr',
        animation: 'floating',
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
