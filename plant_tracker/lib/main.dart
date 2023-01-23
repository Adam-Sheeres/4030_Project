import 'package:flutter/material.dart';

void main() => runApp(MyApp());

List<String> daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri"];
int dayOfWeek = -1;

//Text(daysOfWeek[dayOfWeek])
class getTaskRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dayOfWeek++;
    return Expanded(
        child: Container(
      color: Colors.white,
      margin: EdgeInsets.all(5),
      height: 75,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(left: 5),
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(daysOfWeek[dayOfWeek])],
            )),
      ),
    ));
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      getTaskRow(),
      getTaskRow(),
      getTaskRow(),
      getTaskRow(),
      getTaskRow()
    ]));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Adam Sheeres'),
            backgroundColor: Color.fromARGB(255, 156, 232, 94),
            titleTextStyle:
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22)),
        body: BodyWidget(),
      ),
    );
  }
}
