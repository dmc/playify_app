import 'package:flutter/material.dart';
import 'package:playify_app/main_app.dart';

void main() {
  runApp(PlayifyApp());
}

class PlayifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playify',
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.purple[400],
          dividerTheme: DividerThemeData(color: Colors.black54),
          iconTheme: IconThemeData(color: Colors.black)),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        dividerTheme: DividerThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      home: MainApp(),
    );
  }
}
