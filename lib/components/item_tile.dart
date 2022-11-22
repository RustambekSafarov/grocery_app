// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  String item_name;
  String item_price;
  String image_path;
  final color;
  ItemTile({
    super.key,
    // ignore: non_constant_identifier_names
    required this.item_name,
    required this.item_price,
    required this.image_path,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              image_path,
              height: 64,
            ),

            //item name
            Text(item_name),

            //price + button
            MaterialButton(
              onPressed: () {},
              color: color[800],
              child: Text(
                '\$$item_price',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
