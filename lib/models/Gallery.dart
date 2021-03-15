class Gallery {
  final String id;
  final String title;
  final String description;
  final String author;

  final String authorAvatar;

  final int viewCount;
  final int upCount;
  final int commentCount;

  final bool isFavorite;

  final List<String> tags;
  final List<String> images;

  Gallery({
    this.id,
    this.title,
    this.description,
    this.author,
    this.authorAvatar,
    this.viewCount,
    this.upCount,
    this.commentCount,
    this.isFavorite,
    this.tags,
    this.images,
  });

  static Gallery fromJSON(Map<String, dynamic> json) {
    return new Gallery(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        author: json["account_url"],
        viewCount: json["views"],
        upCount: json["ups"],
        commentCount: json["comment_count"],
        isFavorite: json["favorite"],
        tags: null,
        images: null,
        authorAvatar: "https://imgur.com/user/${json["account_url"]}/avatar");
  }
}
