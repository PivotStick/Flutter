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
    var images = List<String>.from(
      (json["images"] ??
              [
                {
                  "link":
                      "https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png"
                }
              ])
          .map<String>((e) => e["link"].endsWith(".mp4")
              ? "https://www.reziew.com/wp-content/uploads/2016/03/video-player-placeholder-very-large.png"
              : e["link"] as String),
    );

    return new Gallery(
        id: json["id"],
        title: json["title"],
        description: json["description"] ?? "",
        author: json["account_url"],
        viewCount: json["views"],
        upCount: json["ups"],
        commentCount: json["comment_count"],
        isFavorite: json["favorite"],
        tags: [],
        images: images,
        authorAvatar: "https://imgur.com/user/${json["account_url"]}/avatar");
  }
}
