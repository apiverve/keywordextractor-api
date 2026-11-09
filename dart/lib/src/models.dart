/// Response models for the Keyword Extractor API.

/// API Response wrapper.
class KeywordextractorResponse {
  final String status;
  final dynamic error;
  final KeywordextractorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  KeywordextractorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory KeywordextractorResponse.fromJson(Map<String, dynamic> json) => KeywordextractorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? KeywordextractorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Keyword Extractor API.

class KeywordextractorData {
  String? url;
  num? keywordCount;
  String? topKeyword;
  num? totalOccurrences;
  KeywordextractorDataKeywords? keywords;
  List<KeywordextractorDataTopkeywordsItem>? topKeywords;
  List<KeywordextractorDataKeyphrasesItem>? keyPhrases;

  KeywordextractorData({
    this.url,
    this.keywordCount,
    this.topKeyword,
    this.totalOccurrences,
    this.keywords,
    this.topKeywords,
    this.keyPhrases,
  });

  factory KeywordextractorData.fromJson(Map<String, dynamic> json) => KeywordextractorData(
      url: json['url'],
      keywordCount: json['keywordCount'],
      topKeyword: json['topKeyword'],
      totalOccurrences: json['totalOccurrences'],
      keywords: json['keywords'] != null ? KeywordextractorDataKeywords.fromJson(json['keywords']) : null,
      topKeywords: (json['topKeywords'] as List?)?.map((e) => KeywordextractorDataTopkeywordsItem.fromJson(e)).toList(),
      keyPhrases: (json['keyPhrases'] as List?)?.map((e) => KeywordextractorDataKeyphrasesItem.fromJson(e)).toList(),
    );
}

class KeywordextractorDataKeywords {
  num? email;
  num? address;
  num? mail;
  num? domain;
  num? addresses;
  num? characters;
  num? retrieved;
  num? internet;
  num? message;
  num? validation;

  KeywordextractorDataKeywords({
    this.email,
    this.address,
    this.mail,
    this.domain,
    this.addresses,
    this.characters,
    this.retrieved,
    this.internet,
    this.message,
    this.validation,
  });

  factory KeywordextractorDataKeywords.fromJson(Map<String, dynamic> json) => KeywordextractorDataKeywords(
      email: json['email'],
      address: json['address'],
      mail: json['mail'],
      domain: json['domain'],
      addresses: json['addresses'],
      characters: json['characters'],
      retrieved: json['retrieved'],
      internet: json['internet'],
      message: json['message'],
      validation: json['validation'],
    );
}

class KeywordextractorDataTopkeywordsItem {
  String? keyword;
  num? count;
  num? percentage;

  KeywordextractorDataTopkeywordsItem({
    this.keyword,
    this.count,
    this.percentage,
  });

  factory KeywordextractorDataTopkeywordsItem.fromJson(Map<String, dynamic> json) => KeywordextractorDataTopkeywordsItem(
      keyword: json['keyword'],
      count: json['count'],
      percentage: json['percentage'],
    );
}

class KeywordextractorDataKeyphrasesItem {
  String? phrase;
  num? relevance;
  num? count;

  KeywordextractorDataKeyphrasesItem({
    this.phrase,
    this.relevance,
    this.count,
  });

  factory KeywordextractorDataKeyphrasesItem.fromJson(Map<String, dynamic> json) => KeywordextractorDataKeyphrasesItem(
      phrase: json['phrase'],
      relevance: json['relevance'],
      count: json['count'],
    );
}

class KeywordextractorRequest {
  String text;

  KeywordextractorRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
