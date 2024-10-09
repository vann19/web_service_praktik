import 'package:flutter/material.dart';
import 'package:web_service_praktik/materi_5/gridViewbuilder.dart';
class PushreplaceNavigationPage extends StatefulWidget {
  const PushreplaceNavigationPage({super.key});

  @override
  State<PushreplaceNavigationPage> createState() =>
      _PushreplaceNavigationPageState();
}

class _PushreplaceNavigationPageState extends State<PushreplaceNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Replace Navigation',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const GridViewBuilderPage(),
                )),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.black),
            child: const Text('Go to detail page')),
      )),
    );
  }
}
