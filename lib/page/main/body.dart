import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/class/click_count.dart';
import 'package:provider_test/page/depth/depth.dart';
import 'package:provider_test/useful/hero.dart';

class ClickBody extends StatelessWidget {
  ClickBody({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<ClickCount>(context);

    return Scaffold(
      appBar: AppBar(
        title: MyHero(
          tag: 'title',
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("${count.count}", style: TextStyle(fontSize: 72)),
            MyHero(
              tag: 'button',
              child: CupertinoButton(
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (_) => Depth(), fullscreenDialog: false));
                },
                color: Colors.deepPurple[200],
                child: Text('depth'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
