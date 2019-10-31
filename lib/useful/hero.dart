import 'package:flutter/material.dart';

class MyHero extends StatelessWidget {
  MyHero({Key key, @required this.tag, this.child}) : super(key: key);
  final child;
  final tag;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      transitionOnUserGestures: true,
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
