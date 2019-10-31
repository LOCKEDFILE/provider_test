import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/class/click_count.dart';
import 'package:provider_test/page/depth/depth.dart';

class ClickBody extends StatelessWidget {
  ClickBody({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<ClickCount>(context);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("${count.count}", style: TextStyle(fontSize: 72)),
            CupertinoButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => Depth()));
              },
              color: Colors.deepPurple[200],
              child: Text('depth'),
            ),
          ],
        ),
      ),
    );
  }
}
