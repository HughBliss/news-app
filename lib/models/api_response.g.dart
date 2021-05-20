// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return ApiResponse(
    status: _$enumDecode(_$StatusEnumMap, json['status']),
    code: _$enumDecodeNullable(_$CodeEnumMap, json['code']),
    message: json['message'] as String?,
    totalResults: json['totalResults'] as int?,
    articles: (json['articles'] as List<dynamic>?)
        ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status],
      'code': _$CodeEnumMap[instance.code],
      'message': instance.message,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$StatusEnumMap = {
  Status.Ok: 'ok',
  Status.Error: 'error',
};

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CodeEnumMap = {
  Code.ParametersMissing: 'parametersMissing',
  Code.ApiKeyInvalid: 'apiKeyInvalid',
};
