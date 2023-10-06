class NewsItem {
  final String image;
  final String title;

  NewsItem({required this.image, required this.title});

  // Factory method to create a NewsItem instance from a JSON map
  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
      image: json['image'] as String,
      title: json['title'] as String,
    );
  }
}
