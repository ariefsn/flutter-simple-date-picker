import 'package:flutter/material.dart';
import 'package:simple_date_picker/components/simple_date_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _initDate  = DateTime.now();
  DateTime _firstDate = DateTime.now().subtract(new Duration(days: 30));
  DateTime _lastDate  = DateTime.now().add(new Duration(days: 0));

  void callback(val){
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new SimpleDatePicker(
          backgroundColor: Colors.amberAccent,
          callback: (val){
            callback(val);
          },
          initDate: _initDate,
          firstDate: _firstDate,
          lastDate: _lastDate,
          duration: Duration(milliseconds: 5000),
          shapeBorder: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(Radius.circular(50.0))),
          titleColor: Colors.black,
          title: "Select Date",
        ),
      ),
    );
  }
}