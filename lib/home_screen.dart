import 'package:flutter/material.dart';
import 'dart:core';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title,required this.onPressed});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final void Function()? onPressed;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
            child:Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 80),
              child:Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Appliance Aid Direct',
                    style: TextStyle(
                      fontSize: 35,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color = Colors.deepPurple[700]!,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Appliance Aid Direct',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              )
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,10),
              child:Text(
                'username',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child:Text(
                'password',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: OutlinedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(const Size(100,50)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.blue.withOpacity(0.5);
                      }
                      if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed)) {
                        return Colors.blue.withOpacity(0.5);
                      }
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: widget.onPressed,
                child: const Text(
                    style: TextStyle(
                      fontSize: 30
                    ),
                    "Log In"
                ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
