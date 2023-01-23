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
      for (int i = 0; i < 5; i++)
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(children: [
                  Container(
                    height: 75,
                    color: Colors.blue,
                  ),
                  Positioned(
                      top: 15,
                      left: 5,
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[Text(daysOfWeek[i])],
                          ))),
                  Positioned(
                      right: 135,
                      top: 20,
                      child: Column(
                          children: [Text("task one"), Text("task two")]))
                ]),
              ),
            )
          ],
        )
    ]));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Part A'),
            backgroundColor: Color.fromARGB(255, 156, 232, 94),
            titleTextStyle:
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 22)),
        body: BodyWidget(),
      ),
    );
  }
}
