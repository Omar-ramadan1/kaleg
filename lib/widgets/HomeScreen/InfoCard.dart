import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kleg/screens/DetailsOfHome.dart';

class InfoCard extends StatelessWidget {
  final String? name, id, date;
  InfoCard(this.id, this.name, this.date);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsOfHome(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      date!,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      name!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      id!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "شركه كيف الشيوخ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
