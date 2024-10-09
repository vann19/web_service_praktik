import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View Builder',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
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
      )),
    );
  }
}
