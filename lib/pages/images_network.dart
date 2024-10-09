import 'package:flutter/material.dart';

class ImageNetworkPage extends StatefulWidget {
  const ImageNetworkPage({super.key});

  @override
  State<ImageNetworkPage> createState() => _ImageNetworkPageState();
}

class _ImageNetworkPageState extends State<ImageNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Network',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://images.unsplash.com/photo-1646423875983-9b2488aa7137?q=80&w=3376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
          ),
        ),
      )),
    );
  }
}
