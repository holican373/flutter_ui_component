import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxes'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CheckboxGroup(
                labels: <String>[
                  "Sunday",
                  "Monday",
                  "Tuesday",
                  "Wednesday",
                  "Thursday",
                  "Friday",
                  "Saturday",
                ],
                disabled: [
                  "Wednesday",
                ],
                onChange: (bool isChecked, String label, int index) => print("isChecked: $isChecked   label: $label  index: $index"),
                onSelected: (List<String> checked) => print("checked: ${checked.toString()}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
