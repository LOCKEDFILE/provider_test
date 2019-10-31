import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/class/click_count.dart';
import 'package:provider_test/class/opacity.dart';
import 'package:provider_test/page/main/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (_) => ClickCount(),
        ),
        ChangeNotifierProvider(
          builder: (_) => OpacityText(),
        )
      ],
      child: MaterialApp(
        home: ClickBody(title: 'Provider'),
      ),
    );
  }
}
