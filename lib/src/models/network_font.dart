class NetworkFont {

  final String url, fontFamily;

  final int weight;

  NetworkFont(this.url, this.fontFamily, this.weight);

  factory NetworkFont.fromJson(Map json) => NetworkFont(
    json['url'] as String,
    json['fontFamily'] as String,
    json['weight'] as int,
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'url': url,
    'fontFamily': fontFamily,
    'weight': weight,
  };
}