import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

// class BodyWidget extends StatelessWidget {
//   const BodyWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Hello World",
//           style: TextStyle(
//             fontSize: 50,
//             fontWeight: FontWeight.w100,
//             color: Colors.white,
//           )),
//     );
//   }
// }

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Flexible(child: Container(color: Colors.blue[900]), flex: 1),
        Flexible(child: Container(color: Colors.blue[500]), flex: 3),
        Flexible(child: Container(color: Colors.blue[300]), flex: 3),
        Flexible(child: Container(color: Colors.blue[100]), flex: 10),
      ],
    ));
  }
}
