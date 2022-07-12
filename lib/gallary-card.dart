// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class GallaryCard extends StatelessWidget {
  final Color Boxcolor1;
  final Color Boxcolor2;
  final double ht;
  final double wd;
  final String text1;
  final String text2;
  const GallaryCard({
    Key? key,
    required this.Boxcolor1,
    required this.Boxcolor2,
    required this.ht,
    required this.wd,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: Container(
            height: ht,
            width: wd,
            decoration: BoxDecoration(
                color: Boxcolor1, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(Colors.white.withOpacity(0.2))),
              onPressed: () {},
              child: Center(
                  child: Text(
                text1,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
            ),
          ),
        ),
        Container(
          height: ht,
          width: wd,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Boxcolor2,
          ),
          child: TextButton(
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all(Colors.white.withOpacity(0.2))),
            onPressed: () {},
            child: Center(
                child: Text(
              text2,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
          ),
        )
      ],
    );
  }
}
