import 'package:flutter/material.dart';
import 'package:components/ui/button.dart';
import 'package:components/ui/checkbox.dart';
import 'package:components/ui/appbar.dart';
import 'package:components/ui/alertbox.dart';
import 'package:components/ui/radiobutton.dart';
import 'package:components/ui/input_list.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Different UI Decoration'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'Buttons',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyButton()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'Radio Buttons',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyRadioButton()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'Checkboxes',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCheckBox()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'App Bars',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAppBar()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'Alert Boxes',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAlertBox()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'Input Boxes',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyInputBox()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
