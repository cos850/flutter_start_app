import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_start_app/screens/statefull_widget.dart';
import 'package:flutter_start_app/screens/stateless_widget.dart';
import 'package:flutter_start_app/widgets/Button.dart';
import 'package:flutter_start_app/widgets/title.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF181818),
        appBar: AppBar(
          title: const MyLargeTitle(text: 'Home'),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF181818),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyStatelessWidget(),
                      ),
                    );
                  },
                  child: const Button(
                    text: 'stateless',
                    bgColor: Colors.teal,
                    textColor: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyStatefullWidget(),
                      ),
                    );
                  },
                  child: const Button(
                    text: 'statefull',
                    bgColor: Colors.teal,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
