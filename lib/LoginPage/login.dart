import 'package:flutter/material.dart';

final formKey = new GlobalKey<FormState>();
String aadhar;
String pwd;
String phone;
String state;
String selected = null;
String selectedcity = null;

class LoginData {
  String name;

  LoginData({
    this.name,
    // this.aadhar,
    // this.pwd,
    // this.phone,
    // this.state
  });
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<DropdownMenuItem<String>> liststate = [];
  List<DropdownMenuItem<String>> listcity = [];
  List<String> state = ['UP', 'Delhi', 'Harayana'];
  //var cityMap = {"UP": ["Karawal Nagar",'laman'],"Delhi":["Old Delhi", "New Delhi"], "Harayana": ["Gurgaon", "Manesar"], null: ["Choose City"]};
  List<LoginData> loginData = List();

  void validateAndSave() {
    final form = formKey.currentState;
    // int index = 0;
    if (form.validate()) {
      form.save();
      // loginData.add(LoginData());
      // index++;
      Navigator.pushNamed(context, '/mainscreen');
    } else
      print('form is invalid');
  }

  List<String> city = ['Kanpur', 'Aligarh', 'etc', 'etc', 'etc'];

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
    int index = 0;
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
                      value.isEmpty ? 'Name cant be empty' : null,
                  onSaved: (value) => loginData[index].name = value ,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: 'Mobile Number'),
                  validator: (value) =>
                      value.isEmpty ? 'Please enter your mobile number' : null,
                  onSaved: (value) => aadhar = value,
                ),
                // TextFormField(
                //   decoration: new InputDecoration(labelText: 'Aadhar Number'),
                //   validator: (value) =>
                //       value.isEmpty ? 'Aadhar cant be empty' : null,
                //   onSaved: (value) => aadhar = value,
                // ),
                TextFormField(
                    decoration: new InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) =>
                        value.isEmpty ? 'password cant be empty' : null,
                    onSaved: (value) => pwd = value),
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
                  value: selectedcity,
                  hint: Text(' Choose City'),
                  items: listcity,
                  onChanged: (value) {
                    selectedcity = value;
                    setState(() {});
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    validateAndSave();
                    Navigator.pushNamed(context, '/mainscreen');
                  },
                  child: Text('Login'),
                )
              ],
            ),
          )),
    );
  }
}
