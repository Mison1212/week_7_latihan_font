import 'package:flutter/material.dart';

class ListViewStaticPage extends StatelessWidget {
  const ListViewStaticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Static'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _ListItem(title: 'Item 1'),
          SizedBox(height: 12),
          _ListItem(title: 'Item 2'),
          SizedBox(height: 12),
          _ListItem(title: 'Item 3'),
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final String title;

  const _ListItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.blue, // 🔵 Card biru
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Center( // ⬅️ Text di tengah
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white, // ✨ Putih biar kontras dengan biru
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
