import 'package:flutter/material.dart';
import 'package:new_in_space/views/components/back_icon_button.dart';

class AnimatedAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double _preferredHeight = 250.0;
  final String title;
  final String imagePathAppbar;

  AnimatedAppBar({this.title, this.imagePathAppbar});

  @override
  _AnimatedAppBarState createState() => _AnimatedAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}

class _AnimatedAppBarState extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 120));
    _rotateAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.linear);

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: ClipRect(
              child: Align(
                heightFactor: 0.20,
                alignment: Alignment.topCenter,
                child: RotationTransition(
                  turns: _rotateAnimation,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 1, minHeight: 1),
                    child: Image.asset(widget.imagePathAppbar),
                  ),
                ),
              ),
            ),
          ),
          Positioned(left: 10, child: BackIconButton()),
          Text(
            widget.title.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 10.0),
          ),
        ],
      ),
    );
  }
}
