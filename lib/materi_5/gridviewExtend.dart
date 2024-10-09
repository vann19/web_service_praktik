import 'package:flutter/material.dart';

class GridViewExtentPage extends StatefulWidget {
  const GridViewExtentPage({super.key});

  @override
  State<GridViewExtentPage> createState() => _GridViewExtentPageState();
}

class _GridViewExtentPageState extends State<GridViewExtentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView.Extent',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.extent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: List.generate(
            50,
            (index) => Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Product $index',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
