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
  void initState() {
    super.initState();
    print('init');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}
