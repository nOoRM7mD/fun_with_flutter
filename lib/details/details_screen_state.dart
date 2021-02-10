import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details_screen.dart';

class DetailsScreenState extends State<DetailsScreen> {
  String _errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'item description',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          TextField(
            onSubmitted: (String text) {
              setState(() {
                if (!isEmail(text)) {
                  _errorText = 'Error: This is not an email';
                } else {
                  _errorText = null;
                }
              });
            },
            decoration: InputDecoration(
              hintText: "This is a hint",
              errorText: _getErrorText(),
            ),
          )
        ],
      ),
    );
  }

  _getErrorText() {
    return _errorText;
  }

  bool isEmail(String em) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(em);
  }
}
