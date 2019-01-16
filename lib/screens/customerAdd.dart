import 'package:flutter/material.dart';

class CustomerAdd extends StatefulWidget {
  _CustomerAddState createState() => _CustomerAddState();
}

class _CustomerAddState extends State<CustomerAdd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameField(),
            lastNameField(),
            emailNameField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "First Name", hintText: "type your name"));
  }

  Widget lastNameField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "Last Name", hintText: "type your last name"));
  }

  Widget emailNameField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "e-mail", hintText: "type your e-mail adress"));
  }

  Widget passwordField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "password", hintText: "type your password"));
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Save"),
      onPressed: () {},
    );
  }
}
