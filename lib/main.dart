import 'package:flutter/material.dart';
import 'pages/stack.dart';
import 'pages/align.dart';
import 'pages/pading.dart';
import 'pages/elevantedButton.dart';
import 'pages/text_filed.dart';
import 'pages/images_network.dart';
import 'pages/image_local.dart';
import 'pages/penerapan_container.dart';
import 'pages/icon.dart';
import 'materi_4/ListView_builder.dart';
import 'materi_4/Listview_separated.dart';
import 'materi_4/Listview_costum.dart';
import 'materi_4/ListviewDEfault.dart';
import 'materi_5/gridViewbuilder.dart';
import 'materi_5/gridView_Costum.dart';
import 'materi_5/gridview_count.dart';
import 'materi_5/gridviewExtend.dart';
import 'materi_6/navigator_push&pop.dart';
import 'materi_6/pengunaanNavigator_pushReplacement.dart';
import 'components/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), // Halaman utama
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView untuk membuat halaman bisa di-scroll
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Tambahkan padding agar lebih rapi
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StackPositionedPage()),
                  );
                },
                child: const Text('Stack & Positioned'),
              ),
              const SizedBox(height: 20.0), // Jarak antara tombol
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AlignPage()),
                  );
                },
                child: const Text('Align Page'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaddingPage()),
                  );
                },
                child: const Text('Padding Page'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ElevatedButtonPage()),
                  );
                },
                child: const Text('EleventedButton Page'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextFieldPage()),
                  );
                },
                child: const Text('Text Field'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImageNetworkPage()),
                  );
                },
                child: const Text('Penerapan Image Network'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImageAssetPage()),
                  );
                },
                child: const Text('Penerapan Image Local'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PenerapanContainerPage()),
                  );
                },
                child: const Text('Penerapan Container'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IconPage()),
                  );
                },
                child: const Text('Penerapan Icon'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewBuilderPage()),
                  );
                },
                child: const Text('List View Builder'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewSeparatedPage()),
                  );
                },
                child: const Text('List View Separated'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewCustomPage()),
                  );
                },
                child: const Text('List View Custom'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewDefaultPage()),
                  );
                },
                child: const Text('List View Default'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewBuilderPage()),
                  );
                },
                child: const Text('Grid View Builder'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewCustomPage()),
                  );
                },
                child: const Text('Grid View Custom'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewCountPage()),
                  );
                },
                child: const Text('Grid View Count'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewExtentPage()),
                  );
                },
                child: const Text('Grid View Extended'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PushNavigationPage()),
                  );
                },
                child: const Text('Penggunaan Navigator push & pop'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PushreplaceNavigationPage()),
                  );
                },
                child: const Text('Pengunaan Navigator push Replacement'),
              ),

              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const LoginScreen()),
                  );
                },
                child: const Text('Tugas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
