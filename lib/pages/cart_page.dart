import 'package:flutter/material.dart';
import 'package:grocery_app/components/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: shopItems[0].length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 221, 221),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: shopItems[index][3][300],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(shopItems[index][2]),
                  ),
                ),
                title: Text(shopItems[index][0]),
                subtitle: Text('\$${shopItems[index][1]}'),
                trailing: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {},
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
