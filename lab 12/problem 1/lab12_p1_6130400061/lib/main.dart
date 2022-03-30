import 'package:flutter/material.dart';
import 'album_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Album> _albumList = [];
  bool isLoading = true;

  void getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/albums');
    http.Response response = await http.get(url);
    setState(() {
      _albumList = AlbumList.fromJson(json.decode(response.body)).albums;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 2 by Chakphet Phachanawan 613040006-1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 2 by Chakphet Phachanawan 613040006-1'),
        ),
        body: isLoading
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: _albumList.length,
                itemBuilder: (context, index) => ListItem(
                  album: _albumList[index],
                ),
              ),
      ),
    );
  }
}
