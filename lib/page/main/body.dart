import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/class/click_count.dart';
import 'package:provider_test/main.dart';
import 'package:provider_test/page/depth/depth.dart';
import 'package:provider_test/useful/hero.dart';

class ClickBody extends StatelessWidget {
  ClickBody({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<ClickCount>(context);
    final users = Provider.of<DataList>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
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
            Text("${count.count}  ${users.user.first.name}",
                style: TextStyle(fontSize: 72)),
            MyHero(
              tag: 'button',
              child: CupertinoButton(
                onPressed: () {
                  users.addUser(Data(name: 'hello', value: 2));
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
