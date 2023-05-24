import 'dart:async';

Map<String, dynamic> convertToCamelCase(Map<String, dynamic> input) {
  final result = <String, dynamic>{};

  input.forEach((key, value) {
    final convertedKey = _convertToCamelCase(key);
    if (value is Map<String, dynamic>) {
      result[convertedKey] = convertToCamelCase(value);
    } else if (value is List<Map<String, dynamic>>) {
      final convertedList =
          value.map((item) => convertToCamelCase(item)).toList();
      result[convertedKey] = convertedList;
    } else {
      result[convertedKey] = value;
    }
  });

  return result;
}

String _convertToCamelCase(String input) {
  if (input.isEmpty) {
    return input;
  }

  final parts = input.split('_');
  final result = parts[0] +
      parts
          .sublist(1)
          .map((part) => part[0].toUpperCase() + part.substring(1))
          .join('');

  return result;
}

Function debounce(Future callback, Duration duration) {
  Timer? timer;

  return () {
    if (timer != null) {
      timer!.cancel();
    }

    timer = Timer(duration, () {
      callback.then((value) => value);
      timer = null;
    });
  };
}
