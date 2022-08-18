import 'package:flutter/material.dart';
import './widgets/calculator.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen[500],
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.w300))),
      initialRoute: '/',
      routes: {
        '/': (context) => const HexadColor(),
        //so we are able to make mistakes here that is why we use constant
      },
    );
  }
}
