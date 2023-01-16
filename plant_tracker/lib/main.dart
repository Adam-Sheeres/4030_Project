import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
            title: Text('Adam Sheeres'),
            backgroundColor: Color.fromARGB(255, 156, 232, 94),
            titleTextStyle:
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22)),
        body: Center(
            child: Text(
          'Hello World',
          style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontSize: 48),
        )),
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: Text('Press me!'),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, onPrimary: Colors.white),
        )),
  ));
}
