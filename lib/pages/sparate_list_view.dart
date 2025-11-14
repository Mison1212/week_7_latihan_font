import 'package:flutter/material.dart';

class SeparateListViewPage extends StatelessWidget {
  const SeparateListViewPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Separated"),
        centerTitle: true,
      ),
      body: ListView.separated(
        // jumlah item
        itemCount: 5,
        //pedding di sekitar list
        padding: const EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        // Builder untuk setiap item
        itemBuilder:(context, index) {
          return Container(
            height: 60,
            color: Colors.blue[100],
            child: Center(
              child: Text('Item ${index + 1}', style: TextStyle(),),
            ),
          );
        },
        //builder untuk separator
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey, thickness: 1);
          
          
        },
        ),

      );
    
  }
}
