import 'dart:async';
import 'dart:core';

import 'package:ui_task/CourseDesign/block/ActionEvent.dart';

class ChangeSelectedButtonBloc {
  int _selectedIndex = 0;

  final StreamController<ActionEvent> _selectedIndexEventController =
      StreamController<ActionEvent>();
  Sink<ActionEvent> get selectedIndexEventSink =>
      _selectedIndexEventController.sink;

  final StreamController<int> _selectedIndexStateController =
      StreamController<int>();
  StreamSink<int> get _sinkSelectedIndex => _selectedIndexStateController.sink;
  Stream<int> get selectedIndex => _selectedIndexStateController.stream;

  void _selectedEventState(ActionEvent event) {
    if (event is ActionEvent)
      print(_selectedIndex);
    else
      print("No Event Fired");

    _sinkSelectedIndex.add(_selectedIndex);
  }

  ChangeSelectedButtonBloc() {
    _selectedIndexEventController.stream.listen(_selectedEventState);
  }
  void dispose() {
    _selectedIndexStateController.close();
    _selectedIndexEventController.close();
  }
}
