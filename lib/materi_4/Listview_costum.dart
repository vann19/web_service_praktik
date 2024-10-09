import 'package:flutter/material.dart';

class ListViewCustomPage extends StatefulWidget {
  const ListViewCustomPage({super.key});

  @override
  State<ListViewCustomPage> createState() => _ListViewCustomPageState();
}

class _ListViewCustomPageState extends State<ListViewCustomPage> {
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View Custom',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.custom(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              dense: true,
              title: Text(
                listData[index],
                style: const TextStyle(fontSize: 16),
              ),
            ),
            childCount: listData.length,
          ),
        ),
      ),
    );
  }
}
