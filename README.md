
# Stateful and Stateless Widgets

The project contains a Stateless Widget which displays greeting message using a
variable and a Stateful Widget which works like a counter.

### Table of Contents
**[Main Widget](#main)**<br>
**[Stateless Widget](#stateless-widget)**<br>
**[Stateful Widget](#stateful-widget)**<br>
**[Screenshots](#screenshots)**<br>
**[Dependencies](#dependencies)**<br>
**[Widget Tree](#widget-tree)**<br>


### Main
Here is the main function:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
```
You can change between Stateful and Stateless Widgets in "body" of Scaffold Widget.

### Stateless Widget:
```dart
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
```
The Widget contains a Container Widget which consists of a centered Text Widget and
with some styling.

### Stateful Widget:
```dart
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
```
The widget contains 2 parts. The first one is actual Stateful Widget and the second
one is its State.

## Screenshots

Stateless                          |  Statefull
:-------------------------:|:-------------------------:
![image](https://github.com/dw2rl/hw2/assets/105518343/2cc361b0-5a5a-45e2-87ba-8d3da2ca7ed2) |  ![image](https://github.com/dw2rl/hw2/assets/105518343/4d8a16e0-2cf1-4e75-a9de-f4fdde3ad7f5)

### Dependencies
Project depends on **Pacifico** font and **add.png** image.

### Widget Tree
Main Widget:
```javascript
MaterialApp
  └─ Scaffold
      ├─ AppBar
      │    └─ Center
      │         └─ Text
      │              └─ 'Stateful vs Stateless'
      └─ Body
           └─ Widget (Assumed Custom Widget)
```
Stateless Widget:
```javascript
Greeting
  └─ Container
      ├─ padding: EdgeInsets.all(16.0)
      └─ Center
           └─ Text
                ├─ 'msg' (Dynamic content)
                └─ style: TextStyle
                     ├─ color: Colors.teal
                     ├─ fontSize: 40.0
                     ├─ fontWeight: FontWeight.bold
                     └─ fontFamily: 'Pacifico'
```
Stateful Widget:
```javascript
Counter
  └─ _CounterState
       ├─ i: 0
       └─ build: Center
            └─ Row
                 ├─ Text
                 │    └─ 'Counter: $i'
                 │         └─ style: TextStyle
                 │              ├─ fontSize: 40.0
                 │              └─ fontWeight: FontWeight.bold
                 ├─ SizedBox
                 │    └─ height: 16.0
                 └─ TextButton
                      ├─ onPressed: increment()
                      └─ child: Image.asset
                           ├─ 'images/add.png'
                           ├─ width: 30.0
                           └─ height: 30.0
```
