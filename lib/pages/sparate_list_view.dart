import 'package:flutter/material.dart';

class SeparateListViewPage extends StatelessWidget {
  const SeparateListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (i) => "Item ke-${i + 1}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Separated"),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Divider(thickness: 1),
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: const Icon(Icons.label, color: Colors.black87),
              ),
              title: Text(
                items[index],
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: const Icon(Icons.more_horiz),
            ),
          );
        },
      ),
    );
  }
}
