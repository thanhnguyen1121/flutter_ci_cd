// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_ci_cd/convert_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("convert helper test", () {
    test("double result", () {

      final result = convertHelper<double>(1.0);
      expect(result, 1.0);

      final result1 = convertHelper<double>(1);
      expect(result1, 1.0);

      final result2 = convertHelper<double>("1.0");
      expect(result2, 1.0);

      final result3 = convertHelper<double>("1");
      expect(result3, 1.0);

      final result4 = convertHelper<double>(null);
      expect(result4, null);

      final result5 = convertHelper<double>(false);
      expect(result5, null);

      final result6 = convertHelper<double>(true);
      expect(result6, null);
    });

    test("int result", () {
      final result = convertHelper<int>(1);
      expect(result, 1);

      final result1 = convertHelper<int>(1.0);
      expect(result1, 1);

      final result2 = convertHelper<int>("1.0");
      expect(result2, 1);

      final result3 = convertHelper<int>("1");
      expect(result3, 1);

      final result4 = convertHelper<int>("1.123");
      expect(result4, 1);

      final result5 = convertHelper<int>(null);
      expect(result5, null);

      final result6 = convertHelper<double>(false);
      expect(result6, null);

      final result7 = convertHelper<double>(true);
      expect(result7, null);
    });

    test("String result", () {
      final result = convertHelper<String>(1);
      expect(result, "1");

      final result1 = convertHelper<String>("1.0");
      expect(result1, "1.0");

      final result2 = convertHelper<String>(false);
      expect(result2, "false");

      final result3 = convertHelper<String>(true);
      expect(result3, "true");

      final result4 = convertHelper<String>(1.123);
      expect(result4, "1.123");

      final result5 = convertHelper<String>(null);
      expect(result5, null);
    });

    test("bool result", () {
      final result = convertHelper<bool>(true);
      expect(result, true);

      final result1 = convertHelper<bool>(false);
      expect(result1, false);

      final result2 = convertHelper<bool>("false");
      expect(result2, false);

      final result3 = convertHelper<bool>("true");
      expect(result3, true);

      final result4 = convertHelper<bool>(null);
      expect(result4, null);

      final result5 = convertHelper<bool>(1);
      expect(result5, null);

      final result6 = convertHelper<bool>(1.0);
      expect(result6, null);

      final result7 = convertHelper<bool>("1.0");
      expect(result7, null);

      final result8 = convertHelper<bool>("TRUE");
      expect(result8, true);

      final result9 = convertHelper<bool>("FALSE");
      expect(result9, false);
    });

    test("double list result", () {
      final result = convertHelper<List<double>>([1, 2, 3, 4]);
      expect(result, [1.0, 2.0, 3.0, 4.0]);

      final result2 = convertHelper<List<double>>([1, 2.0, 3, 4]);
      expect(result2, [1.0, 2.0, 3.0, 4.0]);

      final result3 = convertHelper<List<double>>([1, 2.0, "3", 4]);
      expect(result3, [1.0, 2.0, 3.0, 4.0]);

      final result4 = convertHelper<List<double>>([1, 2.0, "3", "4.5"]);
      expect(result4, [1.0, 2.0, 3.0, 4.5]);

      final result5 = convertHelper<List<double>>([1, 2.0, "3", "Hihi"]);
      expect(result5, null);

      final result6 = convertHelper<List<double?>>([1, 2.0, "3", "Hihi"]);
      expect(result6, [1.0, 2.0, 3.0, null]);

      final result7 =
          convertHelper<List<double?>>([1, 2.0, "3", "Hihi", false]);
      expect(result7, [1.0, 2.0, 3.0, null, null]);

      final result8 = convertHelper<List<double?>>([1, 2.0, "3", "Hihi", true]);
      expect(result8, [1.0, 2.0, 3.0, null, null]);

      final result9 = convertHelper<List<double>>([1, 2.0, "3", "Hihi", false]);
      expect(result9, null);

      final result10 = convertHelper<List<double>>([1, 2.0, "3", "Hihi", true]);
      expect(result10, null);
    });

    test("int list result", () {
      final result = convertHelper<List<int>>([1, 2, 3, 4]);
      expect(result, [1, 2, 3, 4]);

      final result2 = convertHelper<List<int>>([1, 2.0, 3, 4]);
      expect(result2, [1, 2, 3, 4]);

      final result3 = convertHelper<List<int>>([1, 2.0, "3", 4]);
      expect(result3, [1, 2, 3, 4]);

      final result4 = convertHelper<List<int>>([1, 2.0, "3", "4.5"]);
      expect(result4, [1, 2, 3, 4]);

      final result5 = convertHelper<List<int>>([1, 2.0, "3", "Hihi"]);
      expect(result5, null);

      final result6 = convertHelper<List<int?>>([1, 2.0, "3", "Hihi"]);
      expect(result6, [1, 2, 3, null]);

      final result7 = convertHelper<List<int?>>([1, 2.0, "3", "Hihi", false]);
      expect(result7, [1, 2, 3, null, null]);

      final result8 = convertHelper<List<int?>>([1, 2.0, "3", "Hihi", true]);
      expect(result8, [1, 2, 3, null, null]);

      final result9 = convertHelper<List<int>>([1, 2.0, "3", "Hihi", false]);
      expect(result9, null);

      final result10 = convertHelper<List<int>>([1, 2.0, "3", "Hihi", true]);
      expect(result10, null);
    });

    test("String list result", () {
      final result = convertHelper<List<String>>([1, 2, 3, 4]);
      expect(result, ["1", "2", "3", "4"]);

      final result2 = convertHelper<List<String>>([1, 2.0, 3, 4]);
      expect(result2, ["1", "2.0", "3", "4"]);

      final result3 = convertHelper<List<String>>([1, 2.0, "3", 4]);
      expect(result3, ["1", "2.0", "3", "4"]);

      final result4 = convertHelper<List<String>>([1, 2.0, "3", "4.5"]);
      expect(result4, ["1", "2.0", "3", "4.5"]);

      final result5 = convertHelper<List<String>>([1, 2.0, "3", "Hihi"]);
      expect(result5, ["1", "2.0", "3", "Hihi"]);

      final result6 = convertHelper<List<String?>>([1, 2.0, "3", "Hihi"]);
      expect(result6, ["1", "2.0", "3", "Hihi"]);

      final result7 =
          convertHelper<List<String?>>([1, 2.0, "3", "Hihi", false]);
      expect(result7, ["1", "2.0", "3", "Hihi", "false"]);

      final result8 = convertHelper<List<String?>>([1, 2.0, "3", "Hihi", true]);
      expect(result8, ["1", "2.0", "3", "Hihi", "true"]);

      final result9 = convertHelper<List<String?>>([1, 2.0, "3", "Hihi", null]);
      expect(result9, ["1", "2.0", "3", "Hihi", null]);
    });

    test("bool list result", () {
      final result = convertHelper<List<bool>>([true, false, "true", "false"]);
      expect(result, [true, false, true, false]);

      final result2 = convertHelper<List<bool>>([true, false, "True", "False"]);
      expect(result2, [true, false, true, false]);

      final result3 = convertHelper<List<bool>>([true, false, "TRUE", "FALSE"]);
      expect(result3, [true, false, true, false]);

      final result4 = convertHelper<List<bool?>>([1, 2.0, true, false]);
      expect(result4, [null, null, true, false]);

      final result5 = convertHelper<List<bool?>>([1, "2.0", true, false]);
      expect(result5, [null, null, true, false]);

      final result6 = convertHelper<List<bool>>([1, 2.0, "3", "Hihi"]);
      expect(result6, null);

      final result7 = convertHelper<List<bool?>>([1, 2.0, "3", "Hihi", false]);
      expect(result7, [null, null, null, null, false]);
    });
  });
}
