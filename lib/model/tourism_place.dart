// To parse this JSON data, do
//
//     final tourismResult = tourismResultFromJson(jsonString);

import 'dart:convert';

TourismResult tourismResultFromJson(String str) => TourismResult.fromJson(json.decode(str));

String tourismResultToJson(TourismResult data) => json.encode(data.toJson());

class TourismResult {
  TourismResult({
    required this.pesan,
    required this.sukses,
    required this.tourismPlaceList,
  });

  String pesan;
  bool sukses;
  List<TourismPlace> tourismPlaceList;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
    pesan: json["pesan"],
    sukses: json["sukses"],
    tourismPlaceList: List<TourismPlace>.from(json["tourismPlaceList"].map((x) => TourismPlace.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "pesan": pesan,
    "sukses": sukses,
    "tourismPlaceList": List<dynamic>.from(tourismPlaceList.map((x) => x.toJson())),
  };
}

class TourismPlace {
  TourismPlace({
    required this.id,
    required this.title,
    required this.description,
    required this.openDay,
    required this.openTime,
    required this.price,
    required this.location,
    required this.img,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
  });

  String id;
  String title;
  String description;
  String openDay;
  String openTime;
  String price;
  String location;
  String img;
  String img1;
  String img2;
  String img3;
  String img4;

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    openDay: json["openDay"],
    openTime: json["openTime"],
    price: json["price"],
    location: json["location"],
    img: json["img"],
    img1: json["img1"],
    img2: json["img2"],
    img3: json["img3"],
    img4: json["img4"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "openDay": openDay,
    "openTime": openTime,
    "price": price,
    "location": location,
    "img": img,
    "img1": img1,
    "img2": img2,
    "img3": img3,
    "img4": img4,
  };
}
