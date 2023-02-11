import 'package:flutter/material.dart';

/*WHEN USE:
*   @JsonKey(name: 'name', fromJson: convertHelper<String>)
    String? name;
* */

T? convertHelper<T>(dynamic value) {
  if (T == double) {
    return _doubleConvertSupport(value) as T?;
  }

  if (T == int) {
    return _intConvertSupport(value) as T?;
  }

  if (T == bool) {
    return _boolConvertSupport(value) as T?;
  }

  if (T == String) {
    return _stringConvertSupport(value) as T?;
  }

  if ((T == List<double>) || (T == List<double?>)) {
    return _listDoubleConvertSupport<T>(value);
  }

  if ((T == List<int>) || (T == List<int?>)) {
    return _listIntConvertSupport<T>(value);
  }

  if ((T == List<String>) || (T == List<String?>)) {
    return _listStringConvertSupport<T>(value);
  }

  if ((T == List<bool>) || (T == List<bool?>)) {
    return _listBoolConvertSupport<T>(value);
  }

  if (value is T) {
    return value;
  }

  if (value == null) {
    return null;
  }
  return value is T ? value : null;
}

double? _doubleConvertSupport(dynamic value) {
  try {
    final result =
        (value is int ? value.toDouble() : double.tryParse(value.toString()));
    if (result == null) {
      debugPrintStack(
        maxFrames: 5,
        label:
            "value is $value has type ${value.runtimeType} is not subtype double",
      );
      return null;
    }
    return result;
  } catch (exception) {
    return null;
  }
}

int? _intConvertSupport(dynamic value) {
  try {
    final result = (int.tryParse(value.toString()) ??
        double.tryParse(value.toString())?.toInt());
    if (result == null) {
      debugPrintStack(
        maxFrames: 5,
        label:
            "value is $value has type ${value.runtimeType} is not subtype int",
      );
      return null;
    }
    return result;
  } catch (exception) {
    return null;
  }
}

bool? _boolConvertSupport(dynamic value) {
  try {
    if (value is bool) {
      return value;
    }
    final result = value.toString().toLowerCase();

    if (result == "true") {
      return true;
    }

    if (result == "false") {
      return false;
    }
    return null;
  } catch (exception) {
    return null;
  }
}

String? _stringConvertSupport(dynamic value) {
  return value?.toString();
}

T? _listDoubleConvertSupport<T>(value) {
  try {
    List<double?> doubleNullAbleList = [];
    List<double> doubleNonNullAbleList = [];
    if (value is List) {
      for (var element in value) {
        final result = _doubleConvertSupport(element);

        if (T == List<double>) {
          if (result != null) {
            doubleNonNullAbleList.add(result);
          } else {
            return [] as T;
          }
        } else {
          doubleNullAbleList.add(result);
        }
      }
      if (T == List<double>) {
        return doubleNonNullAbleList as T;
      }
      if (T == List<double?>) {
        return doubleNullAbleList as T;
      }
    }
    return null;
  } catch (exception) {
    return null;
  }
}

T? _listIntConvertSupport<T>(value) {
  try {
    List<int?> intNullAbleList = [];
    List<int> intNonNullAbleList = [];
    if (value is List) {
      for (var element in value) {
        final result = _intConvertSupport(element);

        if (T == List<int>) {
          if (result != null) {
            intNonNullAbleList.add(result);
          } else {
            return [] as T;
          }
        } else {
          intNullAbleList.add(result);
        }
      }
      if (T == List<int>) {
        return intNonNullAbleList as T;
      }
      if (T == List<int?>) {
        return intNullAbleList as T;
      }
    }
    return null;
  } catch (exception) {
    return null;
  }
}

T? _listStringConvertSupport<T>(value) {
  try {
    List<String?> stringNullAbleList = [];
    List<String> stringNonNullAbleList = [];
    if (value is List) {
      for (var element in value) {
        final result = _stringConvertSupport(element);

        if (T == List<String>) {
          if (result != null) {
            stringNonNullAbleList.add(result);
          } else {
            return [] as T;
          }
        } else {
          stringNullAbleList.add(result);
        }
      }
      if (T == List<String>) {
        return stringNonNullAbleList as T;
      }
      if (T == List<String?>) {
        return stringNullAbleList as T;
      }
    }
    return null;
  } catch (exception) {
    return null;
  }
}

T? _listBoolConvertSupport<T>(value) {
  try {
    List<bool?> boolNullAbleList = [];
    List<bool> boolNonNullAbleList = [];
    if (value is List) {
      for (var element in value) {
        final result = _boolConvertSupport(element);

        if (T == List<bool>) {
          if (result != null) {
            boolNonNullAbleList.add(result);
          } else {
            return [] as T;
          }
        } else {
          boolNullAbleList.add(result);
        }
      }
      if (T == List<bool>) {
        return boolNonNullAbleList as T;
      }
      if (T == List<bool?>) {
        return boolNullAbleList as T;
      }
    }
    return null;
  } catch (exception) {
    return null;
  }
}
