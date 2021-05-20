import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news/Models/source.dart';
import 'package:news/helpers/date_time_converter.dart';

part 'article.g.dart';

@JsonSerializable()
class Article extends Equatable {
  final Source source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  @DateTimeConverter()
  final DateTime publishedAt;
  final String? content;

  Article({
    required this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  @override
  List<Object?> get props => [
        author,
        title,
        description,
        url,
        publishedAt,
        urlToImage,
        content,
      ];

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
