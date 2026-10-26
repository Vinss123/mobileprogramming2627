import 'package:flutter/material.dart';

import 'layarkeduapisah.dart';

class LayarKedua extends StatelessWidget {
  const LayarKedua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ini Screen 2')),
      body: Center(
        child: ElevatedButton(
          child: const Text("Ini screen kedua, tap icon back di app bar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      home: MyHome(),
      routes: {
        '/layar2': (context) => const LayarKedua(),
      },
    );
  }
}

//perlu  dipisah karena Navigator perlu punya parent Material App
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Utama')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layar2');
              },
              child: const Text('Ke Layar Kedua'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayarKeduaPisah(
                      pesan: 'halloo ini pesan dari screen 1',
                    ),
                  ),
                );
              },
              child: const Text('Ke Layar Kedua Pisah'),
            ),
          ],
        ),
      ),
    );
  }
}

//tests
