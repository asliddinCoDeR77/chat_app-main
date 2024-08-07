// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Storyies extends StatelessWidget {
  final String name;
  final String imageUrl;
  const Storyies({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.deepPurple, width: 3),
              ),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
