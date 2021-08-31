import 'dart:math';

///Package imports
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart' as intl;

///Chart import
import 'package:syncfusion_flutter_charts/charts.dart' hide LabelPlacement;

///Core import
import 'package:syncfusion_flutter_core/core.dart';

///Core theme import
import 'package:syncfusion_flutter_core/theme.dart';

///Slider import
import 'package:syncfusion_flutter_sliders/sliders.dart';

int chartHeight = 100;
late RangeController rangeController;
GlobalKey<DisplayDifferenceState> key = GlobalKey<DisplayDifferenceState>();

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: Callipers(),
    );
  }
}

class Callipers extends StatefulWidget {
  @override
  CallipersState createState() => CallipersState();
}

class CallipersState extends State<Callipers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [DefaultRangeSelectorPage(), DisplayDifference(key: key)],
        ));
  }
}

class DisplayDifference extends StatefulWidget {

DisplayDifference({Key? key}) : super (key: key);

  @override
  DisplayDifferenceState createState() => DisplayDifferenceState();
}

class DisplayDifferenceState extends State<DisplayDifference> {
  int _getDifferenceBetweenDate(RangeController values) {
    DateTime start, end;
    int difference;
    start = values.start;
    end = values.end;
    difference = end.difference(start).inMinutes;

    return difference;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Text(
        'Difference   :   ' +
            _getDifferenceBetweenDate(rangeController).toString() +
            'minutes',
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

/// Renders default range selector widget
class DefaultRangeSelectorPage extends StatefulWidget {
  /// Creates default range selector widget
  DefaultRangeSelectorPage();

  @override
  _DefaultRangeSelectorPageState createState() =>
      _DefaultRangeSelectorPageState();
}

class _DefaultRangeSelectorPageState extends State<DefaultRangeSelectorPage> {
  _DefaultRangeSelectorPageState();

  final DateTime min = DateTime(2002, 01, 01, 10, 1, 1),
      max = DateTime(2002, 01, 01, 11, 1, 1);
  late List<ChartSampleData> chartData;

  @override
  void initState() {
    super.initState();
    chartData = <ChartSampleData>[
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 1, 30), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 2, 30), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 3, 23), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 4, 22), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 5, 2), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 6, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 7, 23), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 8, 25), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 9, 25), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 10, 23), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 11, 9), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 12, 3), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 13, 4), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 14, 2), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 15, 34), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 16), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 17, 44), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 18, 21), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 19, 21), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 20, 11), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 21, 13), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 22, 14), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 23, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 24, 23), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 25, 34), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 26, 19), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 27, 20), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 28, 23), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 29, 21), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 30, 5), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 31, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 32, 23), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 33, 14), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 34, 1), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 35, 10), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 36, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 37, 1), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 38, 16), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 39, 3), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 40, 32), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 41, 26), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 42, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 43, 22), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 44, 23), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 45, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 46, 17), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 47, 16), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 48, 44), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 49, 45), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 50, 34), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 51, 23), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 52, 21), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 53, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 54, 12), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 55, 1), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 56, 5), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 57, 3), y: getRandomInt(20, 25)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 58, 1), y: getRandomInt(10, 20)),
      ChartSampleData(
          x: DateTime(2002, 01, 01, 10, 59, 9), y: getRandomInt(10, 20)),
    ];
    rangeController = RangeController(
      start: DateTime(2002, 01, 01, 10, 5, 10),
      end: DateTime(2002, 01, 01, 10, 35, 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: SfRangeSelectorTheme(
                      data: SfRangeSelectorThemeData(
                          thumbColor: Colors.transparent,
                          activeTrackColor: Colors.transparent,
                          inactiveTrackColor: Colors.transparent,
                          inactiveRegionColor: Colors.transparent),
                      child: SfRangeSelector(
                          min: min,
                          max: max,
                          interval: 1,
                          controller: rangeController,
                          dateIntervalType: DateIntervalType.minutes,
                          thumbShape: _CustomThumbShape(),
                          onChanged: (SfRangeValues values) {
                            if(key.currentState != null)
                            key.currentState!.setState(() {});
                          },
                          child: Container(
                            width: mediaQueryData.orientation ==
                                    Orientation.landscape
                                ? mediaQueryData.size.width
                                : mediaQueryData.size.width,
                            height: mediaQueryData.orientation ==
                                    Orientation.portrait
                                ? mediaQueryData.size.height * 0.45
                                : mediaQueryData.size.height * 0.4,
                            child: SfCartesianChart(
                              margin: const EdgeInsets.all(0),
                              primaryXAxis: DateTimeAxis(
                                  minimum: min,
                                  maximum: max,
                                  isVisible: true,
                                  labelIntersectAction:
                                      AxisLabelIntersectAction.hide,
                                  intervalType: DateTimeIntervalType.minutes,
                                  interval: 5,
                                  dateFormat: intl.DateFormat.Hms(),
                                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                                  majorTickLines: MajorTickLines(width: 0)),
                              primaryYAxis: NumericAxis(
                                  isVisible: true,
                                  minimum: 8,
                                  maximum: 24,
                                  labelStyle: TextStyle(fontSize: 0),
                                  majorTickLines: MajorTickLines(width: 0)),
                              plotAreaBorderWidth: 0,
                              series: <LineSeries<ChartSampleData, DateTime>>[
                                LineSeries<ChartSampleData, DateTime>(
                                    color: Color.fromARGB(255, 41, 141, 45),
                                    dataSource: chartData,
                                    xValueMapper: (ChartSampleData sales, _) =>
                                        sales.x,
                                    yValueMapper: (ChartSampleData sales, _) =>
                                        sales.y,
                                    animationDuration: 0)
                              ],
                            ),
                          )),
                    )),
              ),
            ),
          ],
        ));
  }

  int getRandomInt(int min, int max) {
    final Random random = Random();
    return min + random.nextInt(max - min);
  }
}

class _CustomThumbShape extends SfThumbShape {
  final Paint _paint = Paint()
    ..style = PaintingStyle.stroke
    ..color = Colors.blue
    ..strokeWidth = 2;
  @override
  void paint(PaintingContext context, Offset center,
      {required RenderBox parentBox,
      required RenderBox? child,
      required SfSliderThemeData themeData,
      SfRangeValues? currentValues,
      currentValue,
      required Paint? paint,
      required Animation<double> enableAnimation,
      required TextDirection textDirection,
      required SfThumb? thumb}) {
    context.canvas.drawLine(Offset(center.dx, center.dy - 30),
        Offset(center.dx, chartHeight.toDouble()), _paint);
  }
}

//Chart sample data
class ChartSampleData {
  /// Holds the datapoint values like x, y, etc.,
  ChartSampleData(
      {this.x,
      this.y,
      this.xValue,
      this.yValue,
      this.secondSeriesYValue,
      this.thirdSeriesYValue,
      this.pointColor,
      this.size,
      this.text,
      this.open,
      this.close,
      this.low,
      this.high,
      this.volume});

  /// Holds x value of the datapoint
  final dynamic? x;

  /// Holds y value of the datapoint
  final num? y;

  /// Holds x value of the datapoint
  final dynamic? xValue;

  /// Holds y value of the datapoint
  final num? yValue;

  /// Holds y value of the datapoint(for 2nd series)
  final num? secondSeriesYValue;

  /// Holds y value of the datapoint(for 3nd series)
  final num? thirdSeriesYValue;

  /// Holds point color of the datapoint
  final Color? pointColor;

  /// Holds size of the datapoint
  final num? size;

  /// Holds datalabel/text value mapper of the datapoint
  final String? text;

  /// Holds open value of the datapoint
  final num? open;

  /// Holds close value of the datapoint
  final num? close;

  /// Holds low value of the datapoint
  final num? low;

  /// Holds high value of the datapoint
  final num? high;

  /// Holds open value of the datapoint
  final num? volume;
}
