import 'dart:developer';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/models/AttractionNotifier.dart';
import '../../core/models/attraction.dart';

// ignore: must_be_immutable
class AttractionPage extends StatelessWidget {
  Attraction attraction;
  AttractionPage({super.key, required this.attraction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule Attraction"),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Hero(
            tag: attraction.title,
            child: Image.network(
              attraction.imageURL,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Container(
            color: const Color.fromRGBO(0, 0, 0, 0.7),
            width: double.infinity,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    attraction.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < attraction.categories.length; i++)
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              attraction.categories[i],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    attraction.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    attraction.address,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Cost",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    attraction.isFree ? "Free" : "Not Free",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
// Schedule the attraction using the provider
                      attraction.isScheduled =
                          !attraction.isScheduled; //invert the "isScheduled"
                      const snackBar = SnackBar(
                        content: Text('Added'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: !attraction.isScheduled
                        ? const Text("Add")
                        : const Text("Remove"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
