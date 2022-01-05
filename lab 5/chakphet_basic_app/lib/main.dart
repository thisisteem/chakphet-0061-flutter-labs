import 'package:flutter/material.dart';
import './app_screens/text_styles.dart';
import 'app_screens/widgets_demo.dart';
import 'app_screens/basic_listview.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Name With Custom Text Style",
      home: BasicListView(),
    ),
  );
}
