import 'package:flutter/material.dart';
import 'package:flutter_provider__ws_practice/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Run from build');
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Center(
        child: Consumer(
          builder: (ctx, _, ___) {
            print('Run from Consumer');
            return Text(
              '${Provider.of<CounterProvider>(ctx, listen: true).getCount()}',
              style: TextStyle(fontSize: 25),
            );
          },
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
