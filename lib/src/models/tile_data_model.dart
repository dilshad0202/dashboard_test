import 'package:flutter/material.dart';

class TileDataModel {
  String? title;
  int? count;
  IconData? icon;

  TileDataModel({this.title, this.count, this.icon});

  // creating dummy for gridView builder purpose
  static List<TileDataModel> tileData = [
    TileDataModel(title: "New Member", icon: Icons.person, count: 10566),
    TileDataModel(title: "Places added", icon: Icons.face_outlined, count: 20653),
    TileDataModel(title: "Support Members", icon: Icons.speaker, count: 76590),
    TileDataModel(title: "Tags Used", icon: Icons.volunteer_activism_sharp, count: 7894)
  ];

    static List<TileDataModel> tileDataBottom = [
    TileDataModel(title: "New Post", icon: Icons.color_lens, count: 48),
    TileDataModel(title: "Attached Files", icon: Icons.attachment_outlined, count: 291),
    TileDataModel(title: "Comments", icon: Icons.comment_bank_outlined, count: 291),
    TileDataModel(title: "Total Views", icon: Icons.remove_red_eye_sharp, count: 110)
  ];
}
