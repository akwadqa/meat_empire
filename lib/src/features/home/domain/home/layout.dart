class Layout<T> {
  final String bgColor;
  final String type;
  final String title;
  final List<T> data;
  final String? viewType;
  final String? id;
  final String? promoImageUrl;

  Layout({
    required this.bgColor,
    required this.type,
    required this.title,
    required this.data,
    required this.viewType,
    required this.id,
    required this.promoImageUrl,
  });

  factory Layout.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) {
    return Layout(
      bgColor: json['bg_color'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      data: (json['data'] as List).map((item) => fromJsonT(item)).toList(),
      viewType: json['view_type'] as String?,
      id: json['id'] as String?,
      promoImageUrl: json['promo_image_url'] as String?,
    );
  }
}
