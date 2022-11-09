import 'package:flutter/material.dart';
import 'package:authauth/core/style.dart';
import 'package:authauth/page/splash_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Auth',
        debugShowCheckedModeBanner: false,
        theme: Stlyes.themeData(),
        home: HomePage(),
      ),
    );
  }
}
