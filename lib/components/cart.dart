// ignore_for_file: unused_element

import 'package:flutter/material.dart';

List _shopItems = const [
  // [ itemName, itemPrice, imagePath, color ]
  ["Avocado", "4.00", "images/avocado.png", Colors.green],
  ["Banana", "2.50", "images/banana.png", Colors.yellow],
  ["Chicken", "12.80", "images/chicken.png", Colors.brown],
  ["Water", "1.00", "images/water.png", Colors.blue],
];

List _cartItem = [];

get cartItem => _cartItem;

get shopItems => _shopItems;

Function()? addCartItem(int index) {
  return () {
    cartItem.add(_shopItems[index]);
  };
}
