class ValidationMixin {
  String validateFirstName(String value) {
    if (value.length < 2) {
      return "name must be at least 2 characters";
    }

    return null;
  }

  String validateLastName(String value) {
    if (value.length < 2) {
      return "last name must be at least 2 characters";
    }

    return null;
  }

  String validateEmail(String value) {
    if (!value.contains("@")) {
      return "mail is not correct";
    }
    return null;
  }
}
