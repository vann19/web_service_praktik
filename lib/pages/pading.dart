import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  const PaddingPage({super.key});

  @override
  State<PaddingPage> createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Padding',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Colors.blue.shade100,
                child: const Text(
                  'Widget tanpa Padding',
                ),
              ),
              const SizedBox(height: 16),
              Material(
                color: Colors.orange.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Widget dengan Padding all',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Material(
                color: Colors.pink.shade100,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                  child: Text('Widget dengan Padding Symmetric'),
                ),
              ),
              const SizedBox(height: 16),
              Material(
                color: Colors.red.shade100,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                    right: 16,
                    top: 16,
                    bottom: 8,
                  ),
                  child: Text(
                    'Widget dengan Padding Only',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
