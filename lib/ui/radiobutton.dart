import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class MyRadioButton extends StatefulWidget {
  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {

  // Declare this variable
  int selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
  }
  // Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Radio Buttons'
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                'Simple Radio Button',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.green,
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                          Text(
                              'Item 1'
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                          Text(
                              'Item 2'
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 3,
                            groupValue: selectedRadio,
                            activeColor: Colors.red,
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                          Text(
                              'Item 3'
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.pink,
              ),
              Text(
                'Radio Button Group',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),
              ),
              RadioButtonGroup(
                labels: [
                  "Option 1",
                  "Option 2",
                  "Option 3",
                  "Option 4",
                ],
                onChange: (String label, int index) {
                    print("label: $label index: $index");
                },
                onSelected: (String label) => print(label),
              ),
              Divider(
                color: Colors.pink,
              ),
            ],
          ),
      ),
    );
  }
}

