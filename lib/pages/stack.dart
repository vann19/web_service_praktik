import 'package:flutter/material.dart';

class StackPositionedPage extends StatefulWidget {
  const StackPositionedPage({super.key});

  @override
  State<StackPositionedPage> createState() => _StackPositionedPageState();
}

class _StackPositionedPageState extends State<StackPositionedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stack & Postioned',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
