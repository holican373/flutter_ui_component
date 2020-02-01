import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  elevation: 10.0,
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                    'Raised Button',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                    'Flat Button',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.green,
                  icon: Icon(
                    Icons.create_new_folder,
                  ),
                  iconSize: 50.0,
                  onPressed: () {},
                )
              ],
              alignment: MainAxisAlignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            ButtonBar(
              children: <Widget>[
                OutlineButton(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.green),
                  child: Text(
                    'Outline Button',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  heroTag: 1,
                  child: Icon(Icons.add),
                  backgroundColor: Colors.green,
                  onPressed: () {},
                ),
                FloatingActionButton.extended(
                  heroTag: 2,
                  label: Text('Extented'),
                  icon: Icon(Icons.thumb_up),
                  backgroundColor: Colors.green,
                  onPressed: () {},
                )
              ],
              alignment: MainAxisAlignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            ButtonBar(
              children: <Widget>[
                InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.only(
                        top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                    child: Text(
                      'InkWell Button',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.only(
                        top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                    child: Text(
                      'Gesture Detect Button',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  onTap: () {},
                )
              ],
              alignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
