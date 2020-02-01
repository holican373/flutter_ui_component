import 'package:flutter/material.dart';
import 'package:components/ui/inputbox.dart';
import 'package:components/ui/rounded_input_box.dart';
import 'package:components/ui/form_builder.dart';

class MyInputBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Different input boxes'),
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
                      'simple input with validation',
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
                    MaterialPageRoute(builder: (context) => MyInput()),
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
                      'Rounded Input Boxes',
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
                    MaterialPageRoute(builder: (context) => MyBeautifulInput()),
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
                      'Form Builder',
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
                    MaterialPageRoute(builder: (context) => MyFormBuilder()),
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
