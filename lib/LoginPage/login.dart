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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Login'),
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
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
                DropdownButton<String>(
                  value: dropdownValue,
                  onChanged: (String newValue) {
                      setState(() {
                      dropdownValue = newValue;
                 });}

                  
                    
                  
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
