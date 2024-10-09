import 'package:flutter/material.dart';

class GridViewCustomPage extends StatefulWidget {
  const GridViewCustomPage({super.key});

  @override
  State<GridViewCustomPage> createState() => _GridViewCustomPageState();
}

class _GridViewCustomPageState extends State<GridViewCustomPage> {
  List<String> listProduct =
      List<String>.generate(50, (index) => 'Product $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Custom',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.custom(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            if (index == 0) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    listProduct[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    listProduct[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
          }, childCount: listProduct.length),
        ),
      ),
    );
  }
}
