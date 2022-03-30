import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Info> futureInfo;

  @override
  void initState() {
    super.initState();
    futureInfo = fetchInfo();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 1 by Chakphet Phachanawan 613040006-1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 1 by Chakphet Phachanawan 613040006-1'),
        ),
        body: Center(
          child: FutureBuilder<Info>(
              future: futureInfo,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                      '${snapshot.data!.name} works at ${snapshot.data!.companyName}');
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}

Future<Info> fetchInfo() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

  if (response.statusCode == 200) {
    return Info.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Faied to load info');
  }
}

class Info {
  final String name;
  final String companyName;

  const Info({
    required this.name,
    required this.companyName,
  });

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      name: json['name'],
      companyName: json['company']['name'],
    );
  }
}
