import 'package:flutter/material.dart';

import 'album_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.album}) : super(key: key);
  final Album album;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        album.id.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        album.title.toString(),
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black,
        ),
      ),
    );
  }
}
