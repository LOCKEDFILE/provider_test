import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/class/click_count.dart';
import 'package:provider_test/class/opacity.dart';

class CountButton extends StatelessWidget {
  CountButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<ClickCount>(context);
    final op = Provider.of<OpacityText>(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CupertinoButton(
            color: Colors.red[200],
            onPressed: () {
              count.dec();
              op.setOpacity();
            },
            child: Text('dec'),
          ),
          CupertinoButton(
            color: Colors.deepPurple[200],
            onPressed: () {
              count.inc();
              op.setOpacity();
            },
            child: Text('inc'),
          )
        ],
      ),
    );
  }
}
