import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String input) {
    if (input == null) {
      return null;
    }

    return DateFormat('yyyy-mm-dd').parse(input, true).toLocal();
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime?.toUtc()?.toIso8601String();
  }
}
