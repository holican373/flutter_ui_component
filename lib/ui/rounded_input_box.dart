import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBeautifulInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded Input Boxes'),
      ),
      body: MyRoundedInputForm(),
    );
  }
}

class MyRoundedInputForm extends StatefulWidget {
  @override
  _MyRoundedInputFormState createState() => _MyRoundedInputFormState();
}

class _MyRoundedInputFormState extends State<MyRoundedInputForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Please enter email.',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter email.';
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Please enter Phone Number.',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter phone.';
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            RaisedButton(
              elevation: 5.0,
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.green),
              ),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
