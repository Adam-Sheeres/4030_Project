import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/models/AttractionNotifier.dart';
import '../../core/models/attraction.dart';
import '../../core/models/guelph_attraction.dart';

class AttractionsSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final attractionNotifier =
        Provider.of<AttractionNotifier>(context, listen: false);
    attractionNotifier.printList();

    String imageURL =
        "https://www.trilliumwest.com/uploads/neighbourhoods/sm/HistoricGuelphgallery-49.jpg";

    final List<Attraction> attractions = GuelphAttractions.guelphAttractions;

    //maybe we want to run a for loop
    // AttractionNotifier list = scheduledAttractions;

    List<Widget> expansionTiles = [];
    for (int i = 0; i < 3; i++) {
      expansionTiles.add(
        ExpansionTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(attractions[i].imageURL),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(attractions[i].title),
          subtitle: Text(attractions[i].address),
          children: <Widget>[
            ListTile(title: Text(attractions[i].description)),
          ],
        ),
      );
    }
    return ListView(children: expansionTiles);
  }
}
