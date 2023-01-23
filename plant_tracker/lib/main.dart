import 'package:flutter/material.dart';

void main() => runApp(MyApp());

List<String> names = ['Riverside Park', 'The Boathouse Tea Room'];
List<List<String>> things = [
  ['Picnic', 'Playground', 'Hiking'],
  ['Boating', 'Ice-Cream', 'Tea']
];
List<String> addresses = ['709 Woolwich St, Guelph', '116 Gordon St, Guelph'];
List myImages = [
  Image.asset('assets/images/riversidePark.png'),
  Image.asset('assets/images/boathouseTearoom.png')
];
List iconList = [Icons.money_off_csred_rounded, Icons.attach_money];
int dayOfWeek = -1;

//Text(daysOfWeek[dayOfWeek])
// class getTaskRow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     dayOfWeek++;
//     return Expanded(
//         child: Container(
//       color: Colors.white,
//       margin: EdgeInsets.all(5),
//       height: 75,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Container(
//             width: 50,
//             height: 50,
//             decoration:
//                 BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[Text(daysOfWeek[dayOfWeek])],
//             )),
//       ),
//     ));
//   }
// }

/**TODO: 
 * Create a 'card' for the two things
 * align the 'aspects' about each of the cards 
 * get that line showing up -> spacing? 
 */

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        for (int i = 0; i < 2; i++)
          Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  //Vertical Alignment for the Card
                  Text(names[i]),
                  myImages[i],
                  Row(
                    children: [
                      Text(things[i][0]),
                      Text(things[i][1]),
                      Text(things[i][2])
                    ],
                  ),
                  Text(addresses[i]),
                  Icon(iconList[i])
                ],
              ))
      ]),
    );
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
