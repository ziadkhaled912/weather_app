import 'package:flutter/services.dart';
import 'package:phone_number/phone_number.dart';

extension PhoneNumberValidator on String {
  Future<bool> get isValidPhoneNumber async {
    try {
      await PhoneNumberUtil().parse(this);
      return true;
    } on PlatformException {
      return false;
    }
  }
}
