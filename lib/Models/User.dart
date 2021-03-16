class User {
  int id;
  String name;

  User({this.id, this.name});

  static User fromJson(Map<String, dynamic> json) {
    return User(id: json["id"], name: json["url"]);
  }
}
