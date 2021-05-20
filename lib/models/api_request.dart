class ApiRequest {
  final String? q;
  final String? qInTitle;
  final DateTime? from;
  final DateTime? to;
  final String? language;
  final String? sortBy;
  final int? pageSize;
  final int? page;

  ApiRequest({
    this.qInTitle,
    this.q,
    this.from,
    this.to,
    this.language,
    this.sortBy,
    this.pageSize,
    this.page,
  });
}
