import 'package:dashboard_test/src/models/os_wise_data.dart';
import 'package:flutter/material.dart';

class BarDataModel {
  String? month;
  int? id;
  List<OsWiseDataModel>? osList = [];

  BarDataModel({this.month, this.osList, this.id});

  /// creating dummy data
  static List<BarDataModel> barDatas = [
    BarDataModel(id: 1, month: "Jan",
     osList: [
      OsWiseDataModel(name: "WebSite", y: 2200, color: const Color(0xff115293), id: 1),
      OsWiseDataModel(name: "App", y: 1300, color: const Color(0xff4791db), id: 2),
      OsWiseDataModel(name: "Linux", y: 900, color: const Color(0xffffbf5f), id: 3),
      OsWiseDataModel(name: "Windows", y: 800, color: const Color(0xffff6378), id: 4),
    ]),
     BarDataModel(id: 2, month: "Jan",
     osList: [
      OsWiseDataModel(name: "WebSite", y: 800, color: const Color(0xff115293), id: 1),
      OsWiseDataModel(name: "App", y: 500, color: const Color(0xff4791db), id: 2),
      OsWiseDataModel(name: "Linux", y: 1500, color: const Color(0xffffbf5f), id: 3),
      OsWiseDataModel(name: "Windows", y: 600, color: const Color(0xffff6378), id: 4),
    ]),
     BarDataModel(id: 3, month: "Jan",
     osList: [
      OsWiseDataModel(name: "WebSite", y: 700, color: const Color(0xff115293), id: 1),
      OsWiseDataModel(name: "App", y: 1250, color: const Color(0xff4791db), id: 2),
      OsWiseDataModel(name: "Linux", y: 750, color: const Color(0xffffbf5f), id: 3),
      OsWiseDataModel(name: "Windows", y: 700, color: const Color(0xffff6378), id: 4),
    ]),
    BarDataModel(id: 4, month: "Jan",
     osList: [
      OsWiseDataModel(name: "WebSite", y: 1500, color: const Color(0xff115293), id: 1),
      OsWiseDataModel(name: "App", y: 1200, color: const Color(0xff4791db), id: 2),
      OsWiseDataModel(name: "Linux", y: 950, color: const Color(0xffffbf5f), id: 3),
      OsWiseDataModel(name: "Windows", y: 900, color: const Color(0xffff6378), id: 4),
    ]),
       BarDataModel(id: 5, month: "Jan",
     osList: [
      OsWiseDataModel(name: "WebSite", y: 2300, color: const Color(0xff115293), id: 1),
      OsWiseDataModel(name: "App", y: 400, color: const Color(0xff4791db), id: 2),
      OsWiseDataModel(name: "Linux", y: 950, color: const Color(0xffffbf5f), id: 3),
      OsWiseDataModel(name: "Windows", y: 500, color: const Color(0xffff6378), id: 4),
    ]),
      BarDataModel(id: 6, month: "Jan",
     osList: [
      OsWiseDataModel(name: "WebSite", y: 1600, color: const Color(0xff115293), id: 1),
      OsWiseDataModel(name: "App", y: 1250, color: const Color(0xff4791db), id: 2),
      OsWiseDataModel(name: "Linux", y: 1500, color: const Color(0xffffbf5f), id: 3),
      OsWiseDataModel(name: "Windows", y: 700, color: const Color(0xffff6378), id: 4),
    ]),
  ];
}
