import 'package:flutter/material.dart';

final formKey = new GlobalKey<FormState>();
String _aadhar;
String _pwd;
String _phone;
String _state;

void validateAndSave() {
  final form = formKey.currentState;

  if (form.validate()) {
    form.save();
    print('Form is valid, email: $_aadhar, password: $_pwd');
  } else
    print('form is invalid');
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<DropdownMenuItem<String>> liststate = [];
  List<DropdownMenuItem<String>> listcity = [];
  List<String> state = ['UP', 'Delhi', 'Hatayana'];
  List<String> city = ['Kanpur', 'Aligarh', 'etc', 'etc', 'etc'];
  String selected = null;

  void listState() {
    liststate = [];
    liststate = state
        .map((val) =>
            new DropdownMenuItem<String>(child: new Text(val), value: val))
        .toList();
  }

  void listCity() {
    listcity = [];
    listcity = city
        .map((val) =>
            new DropdownMenuItem<String>(child: new Text(val), value: val))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    listState();
    listCity();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: Text('Login'),
        backgroundColor: Colors.green[300],
      ),
      body: Container(
          padding: EdgeInsets.only(top: 16.0, left: 30.0, right: 30.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: new InputDecoration(labelText: 'Name'),
                  validator: (value) =>
                      value.isEmpty ? 'Aadhar cant be empty' : null,
                  onSaved: (value) => _aadhar = value,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: 'Mobile Number'),
                  validator: (value) =>
                      value.isEmpty ? 'Aadhar cant be empty' : null,
                  onSaved: (value) => _aadhar = value,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: 'Aadhar Number'),
                  validator: (value) =>
                      value.isEmpty ? 'Aadhar cant be empty' : null,
                  onSaved: (value) => _aadhar = value,
                ),
                TextFormField(
                    decoration: new InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) =>
                        value.isEmpty ? 'password cant be empty' : null,
                    onSaved: (value) => _pwd = value),
                DropdownButton(
                  value: selected,
                  hint: Text(' Choose State'),
                  items: liststate,
                  onChanged: (value) {
                    selected = value;
                    setState(() {});
                  },
                ),
                DropdownButton(
                  value: selected,
                  hint: Text(' Choose City'),
                  items: listcity,
                  onChanged: (value) {
                    selected = value;
                    setState(() {});
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    validateAndSave();
                  },
                  child: Text('Login'),
                )
              ],
            ),
          )),
    );
  }
}
