import 'package:json_annotation/json_annotation.dart';
import 'package:news/Models/article.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  final Status status;
  final Code? code;
  final String? message;
  final int? totalResults;
  final List<Article>? articles;

  ApiResponse({
    required this.status,
    this.code,
    this.message,
    this.totalResults,
    this.articles,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

enum Status {
  @JsonValue('ok')
  Ok,
  @JsonValue('error')
  Error
}

enum Code {
  @JsonValue('parametersMissing')
  ParametersMissing,
  @JsonValue('apiKeyInvalid')
  ApiKeyInvalid
}
