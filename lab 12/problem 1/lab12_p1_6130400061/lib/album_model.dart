class Album {
  final int id;
  final String title;

  Album.fromJson(Map<dynamic, dynamic> albumJson)
      : id = albumJson['id'],
        title = albumJson['title'];
}

class AlbumList {
  final List<Album> albums;

  const AlbumList(this.albums);

  AlbumList.fromJson(List<dynamic> albumJson)
      : albums =
            List.from(albumJson).map((album) => Album.fromJson(album)).toList();
}
