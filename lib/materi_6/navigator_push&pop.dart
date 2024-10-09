import 'package:flutter/material.dart';
import 'package:web_service_praktik/materi_5/gridView_Costum.dart';
class PushNavigationPage extends StatefulWidget {
  const PushNavigationPage({super.key});

  @override
  State<PushNavigationPage> createState() => _PushNavigationPageState();
}

class _PushNavigationPageState extends State<PushNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Navigation',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GridViewCustomPage(),
                )),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.white),
            child: const Text('Go to detail Page')),
      )),
    );
  }
}
