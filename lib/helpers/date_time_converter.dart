import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String? json) {
    if (json == null) {
      return DateTime.now();
    }
    final datetime = DateTime.tryParse(json);
    if (datetime == null) {
      return DateTime.now();
    }
    return datetime;
  }

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
