import 'package:flutter/material.dart';

class PenerapanContainerPage extends StatefulWidget {
  const PenerapanContainerPage({super.key});

  @override
  State<PenerapanContainerPage> createState() => _PenerapanContainerPageState();
}

class _PenerapanContainerPageState extends State<PenerapanContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Penerapan Container',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                spreadRadius: 4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: const Center(
            child: Text(
              'Lorwm Ipsum dolar sit amet, consectetur adipsicing elit.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )),
    );
  }
}
