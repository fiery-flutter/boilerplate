// ignore: avoid_classes_with_only_static_members
class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  static final RegExp _phoneRegExp =
      RegExp(r'^(628\\d{7}|628\d{9,11}|0\d{7})$');

  static bool isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return password.length > 6;
  }

  static bool isValidPhoneNumber(String phone) {
    return _phoneRegExp.hasMatch(phone);
  }
}
