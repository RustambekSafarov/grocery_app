import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/item_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "images/avocado.png", Colors.green],
    ["Banana", "2.50", "images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "images/chicken.png", Colors.brown],
    ["Water", "1.00", "images/water.png", Colors.blue],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Good morning'),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Let\'s order to fresh items for you',
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Fresh Items',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                padding: const EdgeInsets.all(12),
                itemCount: _shopItems[0].length,
                itemBuilder: (context, index) => ItemTile(
                  item_name: _shopItems[index][0],
                  item_price: _shopItems[index][1],
                  color: _shopItems[index][3],
                  image_path: _shopItems[index][2],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag,
        ),
      ),
    );
  }
}
