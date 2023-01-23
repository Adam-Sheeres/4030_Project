import 'package:flutter/material.dart';
import 'dart:developer';

void main() => runApp(MyApp());

List<List<String>> buttons = [
  ['Clear', '/'],
  ['7', '8', '9', '*'],
  ['4', '5', '6', '-'],
  ['1', '2', '3', '+'],
  ['0', '='],
];

String displayEquation = '';

List<List<Color>> colorsForButtons = [
  [Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
  [Colors.blue, Colors.blue],
];

List<List<double>> sizes = [
  [3.3, 1],
  [1, 1, 1, 1],
  [1, 1, 1, 1],
  [1, 1, 1, 1],
  [1, 3.3],
];

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyState();
}

class _BodyState extends State<BodyWidget> {
  evaluate() {
    log(displayEquation);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const SizedBox(
          height: 100,
          width: 100,
          child: Text(
            '5+',
            style: TextStyle(fontSize: 25),
          ),
        ),
        const CalculatorButtons(),
      ],
    );
  }
}

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var rows = _getCalcRow();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: rows[0],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: rows[1],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: rows[2],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: rows[3],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: rows[4],
        )
      ],
    );
  }
}

List<List<Widget>> _getCalcRow() {
  List<List<Widget>> cols = [];
  List<Widget> row = [];

  //dynamically construct the cols
  for (int i = 0; i <= 4; i++) {
    row = [];
    for (int j = 0; j < buttons[i].length; j++) {
      var c = Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: (70.0 * (sizes[i][j])),
            height: 70,
            child: FloatingActionButton(
              backgroundColor: colorsForButtons[i][j],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {
                switch (buttons[i][j]) {
                  case '=':
                    displayEquation += buttons[i][j];
                    log('evaluatingExpression');
                    break;

                  case 'Clear':
                    displayEquation = '';
                    break;

                  default:
                    displayEquation += buttons[i][j];
                    break;
                }

                log(displayEquation);
              },
              child: Text(buttons[i][j]),
            ),
          ));
      row.add(c);
    }
    cols.add(row);
  }
  return cols;
}

//All code is called from here
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

//this builds the material App
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Part B'),
            backgroundColor: const Color.fromARGB(255, 156, 232, 94),
            titleTextStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 22)),
        body: BodyWidget(),
      ),
    );
  }
}
