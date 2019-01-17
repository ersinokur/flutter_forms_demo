import 'package:flutter/material.dart';
import 'package:flutter_forms_demo/mixins/validation_mixin.dart';
import 'package:flutter_forms_demo/models/customer.dart';

class CustomerAdd extends StatefulWidget {
  _CustomerAddState createState() => _CustomerAddState();
}

class _CustomerAddState extends State<CustomerAdd> with ValidationMixin {
  final customer = new Customer();
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
        onSaved: (String value) {
          customer.firstName = value;
        },
        validator: validateFirstName,
        decoration: InputDecoration(
            labelText: "First Name", hintText: "type your name"));
  }

  Widget lastNameField() {
    return TextFormField(
        onSaved: (String value) {
          customer.lastName = value;
        },
        validator: validateLastName,
        decoration: InputDecoration(
            labelText: "Last Name", hintText: "type your last name"));
  }

  Widget emailNameField() {
    return TextFormField(
        onSaved: (String value) {
          customer.emailName = value;
        },
        validator: validateEmail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "e-mail", hintText: "type your e-mail adress"));
  }

  Widget passwordField() {
    return TextFormField(
        onSaved: (String value) {
          customer.passwordName = value;
        },
        obscureText: true,
        decoration: InputDecoration(
            labelText: "password", hintText: "type your password"));
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Save"),
      onPressed: () {
        if (this.formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }
}
