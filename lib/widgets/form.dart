import 'package:flutter/material.dart';

class formwidget extends StatefulWidget {
  const formwidget({super.key});

  @override
  State<formwidget> createState() => _formwidgetState();
}

class _formwidgetState extends State<formwidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formkey = GlobalKey<FormState>();

  //..........FUNCTION..............//
  trysubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      print('error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form widget'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'enter fist name'),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'first name shuld not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'enter last name'),
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'last name shuld not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'enter email address'),
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'email address shuld not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'enter password '),
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return 'password shuld not be less than 6';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text('submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
