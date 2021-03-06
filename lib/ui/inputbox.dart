import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Form Validation'),
      ),
      body: MyInputForm(),
    );
  }
}

class MyInputForm extends StatefulWidget {
  @override
  _MyInputFormState createState() => _MyInputFormState();
}

class _MyInputFormState extends State<MyInputForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Name'),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter name.';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(hintText: 'Birth Date'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter birth date.';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'Phone Number'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter phone number.';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Address'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter address.';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  color: Colors.green,
                  elevation: 5,
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
