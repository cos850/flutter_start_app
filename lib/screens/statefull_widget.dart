import 'package:flutter/material.dart';
import 'package:flutter_start_app/widgets/title.dart';

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
        title: const MyLargeTitle(text: 'Satefull Widget'),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Click Counter',
              style: TextStyle(
                fontSize: 40,
                color: Theme.of(context).textTheme.titleLarge!.color,
              ),
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
