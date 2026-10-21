
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'counter_page.dart';

void main() {
  runApp(
    // Cung cấp trạng thái Counter cho ứng dụng.
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

// Widget gốc của ứng dụng.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // Màn hình chính của ứng dụng.
      home: CounterPage(),
    );
  }
}
