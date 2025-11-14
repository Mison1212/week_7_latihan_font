import 'package:flutter/material.dart';


// ==============================
// 2️⃣ DUMMY DATA PRODUK
// ==============================
final List<Map<String, dynamic>> products = [
  {
    "name": "Headphone Bluetooth",
    "price": "Rp 120.000",
    "color": Colors.blue,
  },
  {
    "name": "Smartwatch Series 7",
    "price": "Rp 250.000",
    "color": Colors.green,
  },
  {
    "name": "Gaming Mouse RGB",
    "price": "Rp 180.000",
    "color": Colors.red,
  },
  {
    "name": "Keyboard Mechanical",
    "price": "Rp 320.000",
    "color": Colors.orange,
  },
];


// ==============================
// 1️⃣ HALAMAN UTAMA
// ==============================
class SeparateListViewHorizontalPage extends StatelessWidget {
  const SeparateListViewHorizontalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Separated Horizontal"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TITLE
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Featured Product',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // LISTVIEW HORIZONTAL
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: products.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}


// ==============================
// 3️⃣ WIDGET CARD PRODUK
// ==============================
class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: product["color"].withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag, size: 40, color: product["color"]),
          const SizedBox(height: 12),
          Text(
            product["name"],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            product["price"],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
