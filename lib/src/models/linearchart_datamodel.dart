class LineChartDataModel {
  double? x;
  double? y;

  LineChartDataModel({this.x, this.y});


// here creating dummy data for follwer chart
  static List<LineChartDataModel> lineardataList = [
    LineChartDataModel(x: 0, y: 0),
    LineChartDataModel(x: 1, y: 3),
    LineChartDataModel(x: 2, y: 4),
    LineChartDataModel(x: 3, y: 5),
    LineChartDataModel(x: 4, y: 7),
    LineChartDataModel(x: 5, y: 8),
    LineChartDataModel(x: 6, y: 6),
   
  ];

  // here creating dummy data for one else chart
  static List<LineChartDataModel> lineardataOneElseList = [
    LineChartDataModel(x: 0, y: 0),
    LineChartDataModel(x: 1, y: 2),
    LineChartDataModel(x: 2, y: 4),
    LineChartDataModel(x: 3, y: 3),
    LineChartDataModel(x: 4, y: 2),
    LineChartDataModel(x: 5, y: 4),
    LineChartDataModel(x: 6, y: 6),
   
  ];
}
