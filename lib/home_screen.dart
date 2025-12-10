import 'package:flutter/material.dart';
import 'package:flutter_provider__ws_practice/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Text(
          '${Provider.of<CounterProvider>(context, listen: true).getCount()}',
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
