import 'dart:math';

import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatefulWidget {
  const ElevatedButtonPage({super.key});

  @override
  State<ElevatedButtonPage> createState() => _ElevatedButtonPageState();
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ElevatedButton',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => log,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Click Me',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => log,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(
                  Icons.play_arrow_rounded,
                ),
                label: const Text(
                  'Click Me',
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.maxFinite,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () => log,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                  ),
                  label: const Text(
                    'Click Me',
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
