import 'package:flutter/material.dart';
import 'package:provider_test/page/depth/depth_button.dart';
import 'package:provider_test/page/depth/popup.dart';

class Depth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple[200]),
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
