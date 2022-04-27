// Import the test package and Counter class

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_test/src/utils/form_utils.dart';

void main() {
  group('Form validators', () {
    test('Email', () {
      expect(FormUtils.validateEmail("dfgdfg"), "Enter a valid email");

      expect(FormUtils.validateEmail("aa@aa"), "Enter a valid email");

      expect(FormUtils.validateEmail("@aa.a"), "Enter a valid email");

      expect(FormUtils.validateEmail("aa@aa.com"), null);
    });

    test('Password', () {
      expect(FormUtils.validatePassword("asdas"), "Password too short");

      expect(FormUtils.validatePassword("aadsadasdaaom"), null);



    });




  });
}
