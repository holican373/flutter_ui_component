import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlertBox extends StatefulWidget {
  @override
  _MyAlertBoxState createState() => _MyAlertBoxState();
}

class _MyAlertBoxState extends State<MyAlertBox> {
  showSimpleDialog(BuildContext context) {
    SimpleDialog dialog = SimpleDialog(
      shape: Border.all(color: Colors.green),
      elevation: 5.0,
      title: Text(
        'Simple Diaglog',
        style: TextStyle(color: Colors.green),
        textAlign: TextAlign.center,
      ),
      children: <Widget>[
        SimpleDialogOption(
          child: Text(
            'Simple Diaglog Option 1',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        SimpleDialogOption(
          child: Text(
            'Simple Diaglog Option 2',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        SimpleDialogOption(
          child: Text(
            'Simple Diaglog Option 3',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        SimpleDialogOption(
          child: Text(
            'Simple Diaglog Option 4',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        SimpleDialogOption(
          child: Text(
            'Simple Diaglog Option 5',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),
        SimpleDialogOption(
          child: Text(
            'Simple Diaglog Option 6',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  showConfirmDialog(BuildContext context) {
    Widget accessButton = FlatButton(
      child: Text('Accept'),
      onPressed: () {},
    );
    Widget cancelButton = FlatButton(
      child: Text('Cancel'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog();
    AlertDialog confirmAlert = AlertDialog(
      elevation: 5.0,
      title: Text(
        'Reset Confirmation Alert Diaglog?',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green),
      ),
      content: Text(
        'This item is showing Comfirmation Dialog Design.',
        textAlign: TextAlign.center,
      ),
      shape: Border.all(color: Colors.green),
      actions: [accessButton, cancelButton],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return confirmAlert;
        });
  }

  showPopUpAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      elevation: 5.0,
      title: Text(
        'PopUp Alert Diaglog',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green),
      ),
      content: Text(
        'This item is showing PopUp Dialog Design.',
        textAlign: TextAlign.center,
      ),
      shape: Border.all(color: Colors.green),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Boxes'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                  elevation: 10.0,
                  child: Text(
                    'PopUp Alert Diaglog',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    showPopUpAlertDialog(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                RaisedButton(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                  elevation: 10.0,
                  child: Text(
                    'Reset Confirmation Alert Diaglog?',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    showConfirmDialog(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                RaisedButton(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
                  elevation: 10.0,
                  child: Text(
                    'Simple Diaglog',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  color: Colors.pink,
                  onPressed: () {
                    showSimpleDialog(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
