import 'package:flutter/material.dart';

class MyStatefullWidget extends StatefulWidget {
  const MyStatefullWidget({super.key});

  @override
  State<MyStatefullWidget> createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {
  int counter = 0;

  void onClick() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181818),
        title: const Text(
          'Satefull Widget',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'click count',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$counter',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                IconButton(
                  onPressed: onClick,
                  icon: const Icon(
                    Icons.add_box_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
