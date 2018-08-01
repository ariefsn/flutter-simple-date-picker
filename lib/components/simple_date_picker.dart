import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class SimpleDatePicker extends StatefulWidget {
  SimpleDatePicker({
    this.backgroundColor = Colors.blue,
    @required this.callback,
    this.duration = const Duration(milliseconds: 2000),
    this.disabledColor,
    @required this.firstDate,
    @required this.initDate,
    @required this.lastDate,
    this.padding,
    this.shapeBorder,
    this.title,
    this.titleColor,
  });

  final Color backgroundColor;
  final Function callback;
  final Color disabledColor;
  final Duration duration;
  final DateTime firstDate;
  final DateTime initDate;
  final DateTime lastDate;
  final RoundedRectangleBorder shapeBorder;
  final EdgeInsetsGeometry padding;
  final String title;
  final Color titleColor;

  @override
  _SimpleDatePickerState createState() => _SimpleDatePickerState();
}

class _SimpleDatePickerState extends State<SimpleDatePicker> {
  
  DateTime _initDate;
  DateTime _firstDate;
  DateTime _lastDate;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _initDate,
      firstDate: _firstDate,
      lastDate: _lastDate,
    );

    if (picked != null && picked != _initDate) {
      setState(() {
        _initDate = picked;
      });
      widget.callback(_initDate);
    }
  }
  
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _initDate   = widget.initDate;
      _firstDate  = widget.firstDate;
      _lastDate   = widget.lastDate;
    }

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      disabledColor: widget.disabledColor,
      color: widget.backgroundColor,
      animationDuration: widget.duration,
      colorBrightness: Brightness.dark,
      textColor: widget.titleColor,
      shape: widget.shapeBorder,
      child: new Text(widget.title != null ? widget.title : "Select Date" + " : " + _initDate.toString()),
      onPressed: () => _selectDate(context),
      padding: widget.padding,
    );
  }
}