extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension NameValidator on String {
  bool isInvalidName() {
    /// Check unicode categories in Regex:
    /// https://www.regular-expressions.info/unicode.html#category
    return contains(RegExp(r'\p{N}|\p{S}|\p{M}|\p{P}', unicode: true));
  }

  bool isNotEnglish() {
    return !RegExp(r'(^[a-zA-Z\s]+$)').hasMatch(this);
  }
}
