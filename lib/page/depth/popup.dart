import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/class/click_count.dart';
import 'package:provider_test/class/opacity.dart';

class PopUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<ClickCount>(context);
    final op = Provider.of<OpacityText>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInQuint,
        height: op.opacity * 80,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 300),
          opacity: op.opacity,
          child: Text('클릭 ${count.count}'),
        ),
      ),
    );
  }
}
