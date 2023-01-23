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

int thingsCurRow = 0;
int thingsCurCol = 0;

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
//             width: 100,
//             height: 100,
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
              margin: const EdgeInsets.only(
                  left: 30, top: 10, right: 30, bottom: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  //Vertical Alignment for the Card
                  Text(
                    names[i],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  myImages[i],
                  thingsAbout(),
                  Text(addresses[i]),
                  Icon(iconList[i])
                ],
              ))
      ]),
    );
  }
}

class thingsAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100.0,
            height: 30.0,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                things[thingsCurCol][thingsCurRow++ % 3],
                style: const TextStyle(
                  fontFamily: 'Arial',
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 30.0,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                things[thingsCurCol][thingsCurRow++ % 3],
                style: const TextStyle(
                  fontFamily: 'Arial',
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 30.0,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                things[thingsCurCol++][thingsCurRow++ % 3],
                style: const TextStyle(
                  fontFamily: 'Arial',
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Part A'),
            backgroundColor: const Color.fromARGB(255, 156, 232, 94),
            titleTextStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 22)),
        body: BodyWidget(),
      ),
    );
  }
}
