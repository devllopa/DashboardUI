import 'dart:convert';

class Right {
  String? image;
  String? title;
  String? city;

  Right({this.image, this.title, this.city});

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'city': city,
    };
  }

  factory Right.fromMap(Map<String, dynamic> map) {
    return Right(
      image: map['image'],
      title: map['title'],
      city: map['city'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Right.fromJson(String source) => Right.fromMap(json.decode(source));
}
