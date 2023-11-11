import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Stateful vs Stateless'),
          ),
        ),
        body: const Counter(),
      ),
    );
  }
}

// Stateless Widget
class Greeting extends StatelessWidget {
  final String msg;
  const Greeting({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          msg,
          style: const TextStyle(
            color: Colors.teal,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
    );
  }
}

// Stateful Widget
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  _CounterState createState() => _CounterState();
}

// State widget for Counter Stateful Widget
class _CounterState extends State<Counter> {
  int i = 0;

  void increment() {
    setState(() {
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Counter: $i',
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              increment();
            },
            child: Image.asset('images/add.png', width: 30.0,height: 30.0,),
          ),
        ],
      ),
    );
  }
}
