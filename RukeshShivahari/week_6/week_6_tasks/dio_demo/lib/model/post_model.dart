class PostModel {
  final int id;
  final String title;
  final String body;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(
    Map<String, dynamic> jsonData,
  ) {
    return PostModel(
      id: jsonData['id'],
      title: jsonData['title'],
      body: jsonData['body'],
    );
  }
}
