/// Package import
library;
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports
import '../../../../../model/sample_view.dart';

/// Renders the chart with delection zooming sample.
class DefaultZooming extends SampleView {
  /// Creates the chart with delection zooming sample.
  const DefaultZooming(Key key) : super(key: key);

  @override
  _DefaultZoomingState createState() => _DefaultZoomingState();
}

/// State class of the chart with delection zooming.
class _DefaultZoomingState extends SampleViewState {
  _DefaultZoomingState();
  late ZoomPanBehavior _zoomingPanBehavior;
  @override
  void initState() {
    _zoomingPanBehavior = ZoomPanBehavior(
        enablePanning: true,

        /// To enable the selection zooming here.
        enableSelectionZooming: true);
    _zoomData = <ChartSampleData>[
      ChartSampleData(x: 161, y: 65),
      ChartSampleData(x: 150, y: 65),
      ChartSampleData(x: 155, y: 65),
      ChartSampleData(x: 160, y: 65),
      ChartSampleData(x: 148, y: 66),
      ChartSampleData(x: 145, y: 66),
      ChartSampleData(x: 137, y: 66),
      ChartSampleData(x: 138, y: 66),
      ChartSampleData(x: 162, y: 66),
      ChartSampleData(x: 166, y: 66),
      ChartSampleData(x: 159, y: 66),
      ChartSampleData(x: 151, y: 66),
      ChartSampleData(x: 180, y: 66),
      ChartSampleData(x: 181, y: 66),
      ChartSampleData(x: 174, y: 66),
      ChartSampleData(x: 159, y: 66),
      ChartSampleData(x: 151, y: 67),
      ChartSampleData(x: 148, y: 67),
      ChartSampleData(x: 141, y: 67),
      ChartSampleData(x: 145, y: 67),
      ChartSampleData(x: 165, y: 67),
      ChartSampleData(x: 168, y: 67),
      ChartSampleData(x: 159, y: 67),
      ChartSampleData(x: 183, y: 67),
      ChartSampleData(x: 188, y: 67),
      ChartSampleData(x: 187, y: 67),
      ChartSampleData(x: 172, y: 67),
      ChartSampleData(x: 193, y: 67),
      ChartSampleData(x: 153, y: 68),
      ChartSampleData(x: 153, y: 68),
      ChartSampleData(x: 147, y: 68),
      ChartSampleData(x: 163, y: 68),
      ChartSampleData(x: 174, y: 68),
      ChartSampleData(x: 173, y: 68),
      ChartSampleData(x: 160, y: 68),
      ChartSampleData(x: 191, y: 68),
      ChartSampleData(x: 131, y: 62),
      ChartSampleData(x: 140, y: 62),
      ChartSampleData(x: 149, y: 62),
      ChartSampleData(x: 115, y: 62),
      ChartSampleData(x: 164, y: 63),
      ChartSampleData(x: 162, y: 63),
      ChartSampleData(x: 167, y: 63),
      ChartSampleData(x: 146, y: 63),
      ChartSampleData(x: 150, y: 64),
      ChartSampleData(x: 141, y: 64),
      ChartSampleData(x: 142, y: 64),
      ChartSampleData(x: 129, y: 64),
      ChartSampleData(x: 159, y: 64),
      ChartSampleData(x: 158, y: 64),
      ChartSampleData(x: 162, y: 64),
      ChartSampleData(x: 136, y: 64),
      ChartSampleData(x: 176, y: 64),
      ChartSampleData(x: 170, y: 64),
      ChartSampleData(x: 167, y: 64),
      ChartSampleData(x: 144, y: 64),
      ChartSampleData(x: 143, y: 65),
      ChartSampleData(x: 137, y: 65),
      ChartSampleData(x: 137, y: 65),
      ChartSampleData(x: 140, y: 65),
      ChartSampleData(x: 182, y: 65),
      ChartSampleData(x: 168, y: 65),
      ChartSampleData(x: 181, y: 65),
      ChartSampleData(x: 165, y: 65),
      ChartSampleData(x: 214, y: 74),
      ChartSampleData(x: 211, y: 74),
      ChartSampleData(x: 166, y: 74),
      ChartSampleData(x: 185, y: 74),
      ChartSampleData(x: 189, y: 68),
      ChartSampleData(x: 182, y: 68),
      ChartSampleData(x: 181, y: 68),
      ChartSampleData(x: 196, y: 68),
      ChartSampleData(x: 152, y: 69),
      ChartSampleData(x: 173, y: 69),
      ChartSampleData(x: 190, y: 69),
      ChartSampleData(x: 161, y: 69),
      ChartSampleData(x: 173, y: 69),
      ChartSampleData(x: 185, y: 69),
      ChartSampleData(x: 141, y: 69),
      ChartSampleData(x: 149, y: 69),
      ChartSampleData(x: 134, y: 62),
      ChartSampleData(x: 183, y: 62),
      ChartSampleData(x: 155, y: 62),
      ChartSampleData(x: 164, y: 62),
      ChartSampleData(x: 169, y: 62),
      ChartSampleData(x: 122, y: 62),
      ChartSampleData(x: 161, y: 62),
      ChartSampleData(x: 166, y: 62),
      ChartSampleData(x: 137, y: 63),
      ChartSampleData(x: 140, y: 63),
      ChartSampleData(x: 140, y: 63),
      ChartSampleData(x: 126, y: 63),
      ChartSampleData(x: 150, y: 63),
      ChartSampleData(x: 153, y: 63),
      ChartSampleData(x: 154, y: 63),
      ChartSampleData(x: 139, y: 63),
      ChartSampleData(x: 186, y: 69),
      ChartSampleData(x: 188, y: 69),
      ChartSampleData(x: 148, y: 69),
      ChartSampleData(x: 174, y: 69),
      ChartSampleData(x: 164, y: 70),
      ChartSampleData(x: 182, y: 70),
      ChartSampleData(x: 200, y: 70),
      ChartSampleData(x: 151, y: 70),
      ChartSampleData(x: 204, y: 74),
      ChartSampleData(x: 177, y: 74),
      ChartSampleData(x: 194, y: 74),
      ChartSampleData(x: 212, y: 74),
      ChartSampleData(x: 162, y: 70),
      ChartSampleData(x: 200, y: 70),
      ChartSampleData(x: 166, y: 70),
      ChartSampleData(x: 177, y: 70),
      ChartSampleData(x: 188, y: 70),
      ChartSampleData(x: 156, y: 70),
      ChartSampleData(x: 175, y: 70),
      ChartSampleData(x: 191, y: 70),
      ChartSampleData(x: 174, y: 71),
      ChartSampleData(x: 187, y: 71),
      ChartSampleData(x: 208, y: 71),
      ChartSampleData(x: 166, y: 71),
      ChartSampleData(x: 150, y: 71),
      ChartSampleData(x: 194, y: 71),
      ChartSampleData(x: 157, y: 71),
      ChartSampleData(x: 183, y: 71),
      ChartSampleData(x: 204, y: 71),
      ChartSampleData(x: 162, y: 71),
      ChartSampleData(x: 179, y: 71),
      ChartSampleData(x: 196, y: 71),
      ChartSampleData(x: 170, y: 72),
      ChartSampleData(x: 184, y: 72),
      ChartSampleData(x: 197, y: 72),
      ChartSampleData(x: 162, y: 72),
      ChartSampleData(x: 177, y: 72),
      ChartSampleData(x: 203, y: 72),
      ChartSampleData(x: 159, y: 72),
      ChartSampleData(x: 178, y: 72),
      ChartSampleData(x: 198, y: 72),
      ChartSampleData(x: 167, y: 72),
      ChartSampleData(x: 184, y: 72),
      ChartSampleData(x: 201, y: 72),
      ChartSampleData(x: 167, y: 73),
      ChartSampleData(x: 178, y: 73),
      ChartSampleData(x: 215, y: 73),
      ChartSampleData(x: 207, y: 73),
      ChartSampleData(x: 172, y: 73),
      ChartSampleData(x: 204, y: 73),
      ChartSampleData(x: 162, y: 73),
      ChartSampleData(x: 182, y: 73),
      ChartSampleData(x: 201, y: 73),
      ChartSampleData(x: 172, y: 73),
      ChartSampleData(x: 189, y: 73),
      ChartSampleData(x: 206, y: 73),
      ChartSampleData(x: 150, y: 74),
      ChartSampleData(x: 187, y: 74),
      ChartSampleData(x: 153, y: 74),
      ChartSampleData(x: 171, y: 74),
    ];
    _zoomData1 = <ChartSampleData>[
      ChartSampleData(x: 115, y: 57),
      ChartSampleData(x: 138, y: 57),
      ChartSampleData(x: 166, y: 57),
      ChartSampleData(x: 122, y: 57),
      ChartSampleData(x: 126, y: 57),
      ChartSampleData(x: 130, y: 57),
      ChartSampleData(x: 125, y: 57),
      ChartSampleData(x: 144, y: 57),
      ChartSampleData(x: 150, y: 57),
      ChartSampleData(x: 120, y: 57),
      ChartSampleData(x: 125, y: 57),
      ChartSampleData(x: 130, y: 57),
      ChartSampleData(x: 103, y: 58),
      ChartSampleData(x: 116, y: 58),
      ChartSampleData(x: 130, y: 58),
      ChartSampleData(x: 126, y: 58),
      ChartSampleData(x: 136, y: 58),
      ChartSampleData(x: 148, y: 58),
      ChartSampleData(x: 119, y: 58),
      ChartSampleData(x: 141, y: 58),
      ChartSampleData(x: 159, y: 58),
      ChartSampleData(x: 120, y: 58),
      ChartSampleData(x: 135, y: 58),
      ChartSampleData(x: 163, y: 58),
      ChartSampleData(x: 119, y: 59),
      ChartSampleData(x: 131, y: 59),
      ChartSampleData(x: 148, y: 59),
      ChartSampleData(x: 123, y: 59),
      ChartSampleData(x: 137, y: 59),
      ChartSampleData(x: 149, y: 59),
      ChartSampleData(x: 121, y: 59),
      ChartSampleData(x: 142, y: 59),
      ChartSampleData(x: 160, y: 59),
      ChartSampleData(x: 118, y: 59),
      ChartSampleData(x: 130, y: 59),
      ChartSampleData(x: 146, y: 59),
      ChartSampleData(x: 119, y: 60),
      ChartSampleData(x: 133, y: 60),
      ChartSampleData(x: 150, y: 60),
      ChartSampleData(x: 133, y: 60),
      ChartSampleData(x: 149, y: 60),
      ChartSampleData(x: 165, y: 60),
      ChartSampleData(x: 130, y: 60),
      ChartSampleData(x: 139, y: 60),
      ChartSampleData(x: 154, y: 60),
      ChartSampleData(x: 118, y: 60),
      ChartSampleData(x: 152, y: 60),
      ChartSampleData(x: 154, y: 60),
      ChartSampleData(x: 130, y: 61),
      ChartSampleData(x: 145, y: 61),
      ChartSampleData(x: 166, y: 61),
      ChartSampleData(x: 131, y: 61),
      ChartSampleData(x: 143, y: 61),
      ChartSampleData(x: 162, y: 61),
      ChartSampleData(x: 131, y: 61),
      ChartSampleData(x: 145, y: 61),
      ChartSampleData(x: 162, y: 61),
      ChartSampleData(x: 115, y: 61),
      ChartSampleData(x: 149, y: 61),
      ChartSampleData(x: 183, y: 61),
      ChartSampleData(x: 121, y: 62),
      ChartSampleData(x: 139, y: 62),
      ChartSampleData(x: 159, y: 62),
      ChartSampleData(x: 135, y: 62),
      ChartSampleData(x: 152, y: 62),
      ChartSampleData(x: 178, y: 62),
      ChartSampleData(x: 130, y: 62),
      ChartSampleData(x: 153, y: 62),
      ChartSampleData(x: 172, y: 62),
      ChartSampleData(x: 114, y: 62),
      ChartSampleData(x: 135, y: 62),
      ChartSampleData(x: 154, y: 62),
      ChartSampleData(x: 126, y: 63),
      ChartSampleData(x: 141, y: 63),
      ChartSampleData(x: 160, y: 63),
      ChartSampleData(x: 135, y: 63),
      ChartSampleData(x: 149, y: 63),
      ChartSampleData(x: 180, y: 63),
      ChartSampleData(x: 132, y: 63),
      ChartSampleData(x: 144, y: 63),
      ChartSampleData(x: 163, y: 63),
      ChartSampleData(x: 122, y: 63),
      ChartSampleData(x: 146, y: 63),
      ChartSampleData(x: 156, y: 63),
      ChartSampleData(x: 133, y: 64),
      ChartSampleData(x: 150, y: 64),
      ChartSampleData(x: 176, y: 64),
      ChartSampleData(x: 133, y: 64),
      ChartSampleData(x: 149, y: 64),
      ChartSampleData(x: 176, y: 64),
      ChartSampleData(x: 136, y: 64),
      ChartSampleData(x: 157, y: 64),
      ChartSampleData(x: 174, y: 64),
      ChartSampleData(x: 131, y: 64),
      ChartSampleData(x: 155, y: 64),
      ChartSampleData(x: 191, y: 64),
      ChartSampleData(x: 136, y: 65),
      ChartSampleData(x: 149, y: 65),
      ChartSampleData(x: 177, y: 65),
      ChartSampleData(x: 143, y: 65),
      ChartSampleData(x: 149, y: 65),
      ChartSampleData(x: 184, y: 65),
      ChartSampleData(x: 128, y: 65),
      ChartSampleData(x: 146, y: 65),
      ChartSampleData(x: 157, y: 65),
      ChartSampleData(x: 133, y: 65),
      ChartSampleData(x: 153, y: 65),
      ChartSampleData(x: 173, y: 65),
      ChartSampleData(x: 141, y: 66),
      ChartSampleData(x: 156, y: 66),
      ChartSampleData(x: 175, y: 66),
      ChartSampleData(x: 125, y: 66),
      ChartSampleData(x: 138, y: 66),
      ChartSampleData(x: 165, y: 66),
      ChartSampleData(x: 122, y: 66),
      ChartSampleData(x: 164, y: 66),
      ChartSampleData(x: 182, y: 66),
      ChartSampleData(x: 137, y: 66),
      ChartSampleData(x: 157, y: 66),
      ChartSampleData(x: 176, y: 66),
      ChartSampleData(x: 149, y: 67),
      ChartSampleData(x: 159, y: 67),
      ChartSampleData(x: 179, y: 67),
      ChartSampleData(x: 156, y: 67),
      ChartSampleData(x: 179, y: 67),
      ChartSampleData(x: 186, y: 67),
      ChartSampleData(x: 147, y: 67),
      ChartSampleData(x: 166, y: 67),
      ChartSampleData(x: 185, y: 67),
      ChartSampleData(x: 140, y: 67),
      ChartSampleData(x: 160, y: 67),
      ChartSampleData(x: 180, y: 67),
      ChartSampleData(x: 145, y: 68),
      ChartSampleData(x: 155, y: 68),
      ChartSampleData(x: 170, y: 68),
      ChartSampleData(x: 129, y: 68),
      ChartSampleData(x: 164, y: 68),
      ChartSampleData(x: 189, y: 68),
      ChartSampleData(x: 150, y: 68),
      ChartSampleData(x: 157, y: 68),
      ChartSampleData(x: 183, y: 68),
      ChartSampleData(x: 144, y: 68),
      ChartSampleData(x: 170, y: 68),
      ChartSampleData(x: 180, y: 68)
    ];
    super.initState();
  }

  @override
  void dispose() {
    _zoomData.clear();
    _zoomData1.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double bottomPadding = isCardView || model.isWebFullView ? 0 : 60;
    return Scaffold(
        backgroundColor: model.sampleOutputCardColor,
        body: Padding(
          padding: EdgeInsets.fromLTRB(5, 0, 5, bottomPadding),
          child: Container(child: _buildDefaultZoomingChart()),
        ),
        floatingActionButton: isCardView
            ? null
            : FloatingActionButton(
                onPressed: () => _zoomingPanBehavior.reset(),
                backgroundColor: model.primaryColor,
                child: const Icon(Icons.refresh, color: Colors.white),
              ));
  }

  /// Returns the cartesian chart with delection zooming.
  SfCartesianChart _buildDefaultZoomingChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      legend: Legend(isVisible: !isCardView, opacity: 0.8),
      title: ChartTitle(text: isCardView ? '' : 'Heigth vs Weight'),
      zoomPanBehavior: _zoomingPanBehavior,
      primaryXAxis: NumericAxis(
          minimum: 100,
          maximum: 220,
          title: AxisTitle(text: isCardView ? '' : 'Height in inches'),
          majorGridLines: const MajorGridLines(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.shift),
      primaryYAxis: NumericAxis(
          minimum: 50,
          maximum: 80,
          title: AxisTitle(text: isCardView ? '' : 'Weight in Pounds')),
      series: _getZoomScatterSeries(),
    );
  }

  /// Returns the list of cahrt series which need to render
  ///  on the chart with delection zooming.
  List<ScatterSeries<ChartSampleData, num>> _getZoomScatterSeries() {
    return <ScatterSeries<ChartSampleData, num>>[
      ScatterSeries<ChartSampleData, num>(
        dataSource: _zoomData,
        opacity: 0.8,
        name: 'Male',
        xValueMapper: (ChartSampleData data, _) => data.x as num,
        yValueMapper: (ChartSampleData data, _) => data.y,
      ),
      ScatterSeries<ChartSampleData, num>(
          dataSource: _zoomData1,
          opacity: 0.8,
          name: 'Female',
          xValueMapper: (ChartSampleData data, _) => data.x as num,
          yValueMapper: (ChartSampleData data, _) => data.y,
          markerSettings: const MarkerSettings(shape: DataMarkerType.diamond))
    ];
  }

  /// list to store the collection of chart series data points.
  late List<ChartSampleData> _zoomData;

  ///  List to store the collection of chart series data points.
  late List<ChartSampleData> _zoomData1;
}
