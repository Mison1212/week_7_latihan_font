import 'package:flutter/material.dart';

class SeparateListViewHorizontalPage extends StatelessWidget {
  const SeparateListViewHorizontalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(8, (i) => "Menu ${i + 1}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Separated Horizontal"),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Container(
            width: 130,
            decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
