class OperatorModel {
  final String charId;
  final String name;
  final String rarity;
  final String profession;
  final List<SkinModel> skins; // 스킨 리스트 추가

  OperatorModel({
    required this.charId,
    required this.name,
    required this.rarity,
    required this.profession,
    required this.skins,
  });

  factory OperatorModel.fromJson(Map<String, dynamic> json) {
    return OperatorModel(
      charId: json['char_id'] ?? '',
      name: json['name'] ?? 'Unknown',
      rarity: json['rarity'] ?? 'TIER_1',
      profession: json['profession'] ?? '',
      // skins 배열이 null일 경우 빈 리스트로 처리, 있으면 매핑
      skins: (json['skins'] as List<dynamic>?)
              ?.map((e) => SkinModel.fromJson(e))
              .toList() ??
          [],
    );
  }
}

class SkinModel {
  final String skinId;
  final String name;
  final String? illustId;
  final String? avatarId;
  final String? portraitId;
  final String? portraitUrl;
  final String? avatarUrl;
  final List<String> drawerList;

  SkinModel({
    required this.skinId,
    required this.name,
    this.illustId,
    this.avatarId,
    this.portraitId,
    this.portraitUrl,
    this.avatarUrl,
    required this.drawerList,
  });

  factory SkinModel.fromJson(Map<String, dynamic> json) {
    return SkinModel(
      skinId: json['skin_id'] ?? '',
      name: json['name'] ?? '',
      illustId: json['illust_id'],
      avatarId: json['avatar_id'],
      portraitId: json['portrait_id'],
      portraitUrl: json['portrait_url'],
      avatarUrl: json['avatar_url'],
      // drawer_list가 null일 수 있으므로 안전하게 처리
      drawerList: (json['drawer_list'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
    );
  }
}