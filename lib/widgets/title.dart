import 'package:flutter/material.dart';

class MyLargeTitle extends StatefulWidget {
  final String text;

  const MyLargeTitle({
    super.key,
    required this.text,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: const TextStyle(color: Colors.white),
    );
  }
}
