import 'package:flutter/material.dart';

///Date picker imports
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

///Local import
import '../../model/sample_view.dart';

/// Widget of date pciker rtl.
class RtlDatePicker extends DirectionalitySampleView {
  /// Creates default date picker rtl.
  const RtlDatePicker(Key key) : super(key: key);

  @override
  _RtlDatePickerState createState() => _RtlDatePickerState();
}

class _RtlDatePickerState extends DirectionalitySampleViewState {
  final DateRangePickerController _controller = DateRangePickerController();
  late Orientation _deviceOrientation;

  @override
  void initState() {
    _controller.displayDate = DateTime.now();
    _controller.selectedDate = DateTime.now();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _deviceOrientation = MediaQuery.of(context).orientation;
    super.didChangeDependencies();
  }

  @override
  Widget buildSample(BuildContext context) {
    final Widget cardView = Card(
        elevation: 10,
        margin: model.isWebFullView
            ? const EdgeInsets.fromLTRB(30, 60, 30, 10)
            : const EdgeInsets.all(30),
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
          color: model.sampleOutputCardColor,
          child: Theme(
              data: model.themeData.copyWith(
                  colorScheme: model.themeData.colorScheme
                      .copyWith(secondary: model.primaryColor)),
              child: _getGettingStartedDatePicker(_controller, context)),
        ));
    return Column(children: <Widget>[
      Expanded(
          flex: model.isWebFullView ? 9 : 8,
          child: model.isWebFullView
              ? Center(
                  child: SizedBox(width: 400, height: 600, child: cardView))
              : ListView(children: <Widget>[
                  SizedBox(
                    height: 450,
                    child: cardView,
                  )
                ])),
      Expanded(
          flex: model.isWebFullView
              ? 1
              : model.isMobileResolution &&
                      _deviceOrientation == Orientation.landscape
                  ? 0
                  : 1,
          child: Container())
    ]);
  }

  /// Returns the date range picker based on the properties passed
  Widget _getGettingStartedDatePicker(
      DateRangePickerController controller, BuildContext context) {
    return SfDateRangePicker(
      showNavigationArrow: true,
      controller: controller,
    );
  }
}
