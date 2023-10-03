import 'package:flutter/material.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  String jobTypeValue = 'Select job type';
  String StatusValue = 'Select status';

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 15, 0),
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
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
            ),
            // Solid text as fill.
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter full customer name',
              ),
            ),
            const Text(
              '\nPostcode',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter full postcode',
              ),
            ),
            const Text(
              '\nAddress',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter full address',
              ),
            ),
            const Text(
              '\nJob Type',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
             DropdownButtonFormField(
                value: jobTypeValue,
                items: const [
                  DropdownMenuItem(child: Text('Select job type'), value:'Select job type'),
                  DropdownMenuItem(child: Text('Chargeable'), value:'Chargeable'),
                  DropdownMenuItem(child: Text('Trade'), value:'Trade'),
                  DropdownMenuItem(child: Text('Recall'), value:'Recall'),
                  DropdownMenuItem(child: Text('Chargeable for parts'), value:'Chargeable for parts'),
                  DropdownMenuItem(child: Text('Trade for parts'), value:'Trade for parts')
                ],
                onChanged:  (String? newValue) {
                  setState(() {
                    jobTypeValue = newValue!;
                  });
                },
            ),
            const Text(
              '\nStatus',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
            DropdownButtonFormField(
              value: StatusValue,
              items: const [
                DropdownMenuItem(child: Text('Select status'), value:'Select status'),
                DropdownMenuItem(child: Text('Arrived'), value:'Arrived'),
                DropdownMenuItem(child: Text('Completed'), value:'Completed'),
                DropdownMenuItem(child: Text('Estimate sent'), value:'Estimate sent'),
                DropdownMenuItem(child: Text('Parts on order'), value:'Parts on order')
              ],
              onChanged:  (String? newValue) {
                setState(() {
                  StatusValue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: '..',
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.save),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
