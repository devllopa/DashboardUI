import 'dart:convert';

class Stories {
  String? image;
  String? title;

  Stories({
    this.image,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
    };
  }

  factory Stories.fromMap(Map<String, dynamic> map) {
    return Stories(
      image: map['image'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Stories.fromJson(String source) =>
      Stories.fromMap(json.decode(source));
}
