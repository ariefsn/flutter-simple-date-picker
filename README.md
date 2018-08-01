# Simple Date Picker

Simple Date Picker Widget for Flutter Apps.

## Getting Started
1. [Import It](#1-import-it)
2. [Use It](#2-use-it)
3. [Props](#3-properties)

### 1. Import it

```
import 'package:simple_date_picker/components/simple_date_picker.dart';
```

### 2. Use it
> Set the initDate, firstDate, and lastDate.
```
  DateTime _initDate  = DateTime.now();
  DateTime _firstDate = DateTime.now().subtract(new Duration(days: 30));
  DateTime _lastDate  = DateTime.now().add(new Duration(days: 0));
```
> Create callback to get the value.
```
  void callback(val){
    print(val);
  }
```
> Call the dropdown.
```
new SimpleDatePicker(
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
  )
```

### 3. Properties
| Props             | Type                        | Default     | Required |
| -------------     |-----------------------------| ----------- | -------- |
| backgroundColor   | Color                       | Colors.blue | No       |
| callback          | Function                    | -           | Yes      |
| disabledColor     | Color                       | -           | No       |
| duration          | Duration                    | 2000 ms     | No       |
| firstDate         | DateTime                    | -           | Yes      |
| initDate          | DateTime                    | -           | Yes      |
| lastDate          | DateTime                    | -           | Yes      |
| padding           | EdgeInsetsGeometry          | -           | No       |
| shapeBorder       | RoundedRectangleBorder      | -           | No       |
| title             | String                      | -           | No       |
| titleColor        | Color                       | -           | No       |


01. backgroundColor
    > Set the color of widget.
02. callback
    > Callback function for catch value.
03. disabledColor
    > Set the color of disable widget.
04. duration
    > Duration of animation.
05. firstDate
    > Set firstDate of widget.
06. initDate
    > Set initDate of widget. (initDate must be on or after firstDate and before lastDate.)
07. padding
    > Set padding of widget.
08. lastDate
    > Set lastDate of widget. (lastDate must be on or after firstDate)
09. shapeBorder
    > Modify shape of widget.
10. title
    > Set title of widget.
11. titleColor
    > Set titleColor of widget.

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).