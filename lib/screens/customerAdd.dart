import 'package:flutter/material.dart';
import 'package:flutter_forms_demo/mixins/validation_mixin.dart';

class CustomerAdd extends StatefulWidget {
  _CustomerAddState createState() => _CustomerAddState();
}

class _CustomerAddState extends State<CustomerAdd> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
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
        validator: validateFirstName,
        decoration: InputDecoration(
            labelText: "First Name", hintText: "type your name"));
  }

  Widget lastNameField() {
    return TextFormField(
        validator: validateLastName,
        decoration: InputDecoration(
            labelText: "Last Name", hintText: "type your last name"));
  }

  Widget emailNameField() {
    return TextFormField(
        validator: validateEmail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "e-mail", hintText: "type your e-mail adress"));
  }

  Widget passwordField() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: "password", hintText: "type your password"));
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Save"),
      onPressed: () {
        this.formKey.currentState.validate();
      },
    );
  }
}
