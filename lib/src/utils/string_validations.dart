extension StringValidations on String {
  bool get isValidEmail {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
  }

  bool get isValidPasswordLength {
    return this.length >= 6;
  }

  bool get isValidUserName {
    return this.length >= 4;
  }
}
