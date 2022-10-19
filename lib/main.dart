import 'package:flutter/material.dart';

/*
 * InheritedWidget is like a hybrid of Statless & StatefulWidget.
 * It allows you to hold on to state that it's children widgets can use.
 * It has final fields & const constructor. It's primary goal is to 
 * carry state throughout the WidgetTree to pass state between each
 * Widget in the component if needed. InheritedWidget gives you control
 * over which Widget you choose to redraw, unlike normal redraws, because
 * it allows you to see if the changes in a widget should be redrawn 
 * or not.
 * 
 * Note that InheritedWidget itself is not a StatefulWidget. It's a constant.
 * It comes itself to the old InheritedWidget, seeing if the previous
 * InheritedWidget has changed enough to be redrawn. This best way to 
 * compare InheritedWidgets is to give them a unique id. To do this, 
 * one can use uuid package.
 */

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

/*
 * Creating variables in the `_HomePageState` class is
 * similar to setting state using `setState()` in react.
 * 
 */
class _HomePageState extends State<HomePage> {
  String title = 'Tap the screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page - InheritedWidget'),
      ),
      body: GestureDetector(
        onTap: () {
          // SetState comes from framework.dart
          setState(() {
            title = DateTime.now().toIso8601String();
          });
        },
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
