import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/////////////////MyApp statless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'stless_statfull example',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String name = 'Mohamed';
  //int x=1;
  int count = 0;
  checkName() {
    if (name == 'Mohamed')
      setState(() {
        name = 'Ahmed';
      });
    else
      setState(() {
        name = 'Mohamed';
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('stless_statful_example'),
      ),
      body: Center(
          child: Container(
        height: 100,
        width: 200,
        child: Card(
          color: Colors.greenAccent,
          shadowColor: Colors.green,
          child: Center(
            child: Text(
              'This is my son: $name \n $count',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*setState(() {

            name='Ahmed';
          });*/
          checkName();
          count = count + 1;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
