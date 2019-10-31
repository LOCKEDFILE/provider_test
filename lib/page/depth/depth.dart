import 'package:flutter/material.dart';
import 'package:provider_test/page/depth/button.dart';
import 'package:provider_test/page/depth/popup.dart';
import 'package:provider_test/useful/hero.dart';

class Depth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: MyHero(
          tag: 'title',
          child: Text(
            'Provider',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            CountButton(),
            PopUpText(),
          ],
        ),
      ),
    );
  }
}
