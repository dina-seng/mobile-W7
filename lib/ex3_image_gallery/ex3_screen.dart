import 'package:flutter/material.dart';

class Ex3Screen extends StatefulWidget {
  const Ex3Screen({super.key});

  @override
  State<Ex3Screen> createState() => _Ex3ScreenState();
}

class _Ex3ScreenState extends State<Ex3Screen> {
  List<String> images = [
    "assets/bird.jpg",
    "assets/bird2.jpg",
    "assets/insect.jpg",
    "assets/girl.jpg",
    "assets/man.jpg",
  ];

  int currentIndex = 0;

  void showPrevious() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }

  void showNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: showPrevious,
            icon: const Icon(Icons.navigate_before),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: showNext,
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),

      body: Image.asset(images[currentIndex]),
    );
  }
}
