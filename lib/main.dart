import 'package:flutter/material.dart';
import 'package:flutter_provider__ws_practice/counter_provider.dart';
import 'package:flutter_provider__ws_practice/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => CounterProvider(),
        child: HomeScreen(),
      ),
    );
  }
}
