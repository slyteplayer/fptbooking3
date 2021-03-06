import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_google.dart';

import 'home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: LoginGoogle(),
    );
  }
}
