import 'dart:convert';

class Right {
  String? image;
  String? title;
  String? city;
  String? color;

  Right({this.image, this.title, this.city,this.color});

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'city': city,
      'color': color,
    };
  }

  factory Right.fromMap(Map<String, dynamic> map) {
    return Right(
      image: map['image'],
      title: map['title'],
      city: map['city'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Right.fromJson(String source) => Right.fromMap(json.decode(source));
}
