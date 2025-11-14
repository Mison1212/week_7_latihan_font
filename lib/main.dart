import 'package:flutter/material.dart';
import 'package:latihan_font/pages/list_view_sparate_horizontal.dart';
// import 'package:latihan_font/pages/homepage.dart';
// import 'package:latihan_font/pages/listview.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


    @override
    Widget build (BuildContext context) {
      return  MaterialApp(
        title: 'Custom Font',
        // set raleway as teh defult app font
        theme: ThemeData(fontFamily: "Raleway"),
        home: const SeparateListViewHorizontalPage(),

        debugShowCheckedModeBanner: false,
      );
    }
}
  
