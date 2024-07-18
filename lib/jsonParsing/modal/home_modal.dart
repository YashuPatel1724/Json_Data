class HomeModal {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  HomeModal(
      {required this.title,
      required this.url,
      required this.id,
      required this.albumId,
      required this.thumbnailUrl});

  factory HomeModal.fromMap(Map m1) {
    return HomeModal(
        title: m1['title'],
        url: m1['url'],
        id: m1['id'],
        albumId: m1['albumId'],
        thumbnailUrl: m1['thumbnailUrl']);
  }
}
