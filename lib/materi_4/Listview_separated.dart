import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatefulWidget {
  const ListViewSeparatedPage({super.key});

  @override
  State<ListViewSeparatedPage> createState() => _ListViewSeparatedPageState();
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View Sparated',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: listData.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => ListTile(
            dense: true,
            title: Text(
              listData[index],
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          separatorBuilder: (context, index) => const Divider(height: 1),
        ),
      ),
    );
  }
}
