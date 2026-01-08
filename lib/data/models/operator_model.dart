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
      rarity: json['rarity'] ?? "Tier_1",
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
// ... 기존 OperatorModel, SkinModel ...

class OperatorDetailModel extends OperatorModel {
  final String description;
  final List<PhaseModel> phases;
  final List<ConsumptionModel> consumptions;

  OperatorDetailModel({
    required super.charId,
    required super.name,
    required super.rarity,
    required super.profession,
    required super.skins,
    required this.description,
    required this.phases,
    required this.consumptions,
  });

  factory OperatorDetailModel.fromJson(Map<String, dynamic> json) {
    // description에서 <@ba.kw> 태그를 제거하여 순수 텍스트로 저장 (표시할 때 강조 가능)
    final cleanedDescription = (json['description'] as String? ?? '')
        .replaceAll(RegExp(r'<@ba\.kw>(.*?)</>'), r'\1'); // 태그 제거 후 내용만 남김

    return OperatorDetailModel(
      charId: json['char_id'] ?? '',
      name: json['name'] ?? '',
      rarity: json['rarity'] ?? '',
      profession: json['profession'] ?? '',
      skins: (json['skins'] as List?)?.map((e) => SkinModel.fromJson(e)).toList() ?? [],
      description: cleanedDescription, // 태그 처리된 설명
      phases: (json['phases'] as List?)?.map((e) => PhaseModel.fromJson(e)).toList() ?? [],
      consumptions: (json['consumptions'] as List?)?.map((e) => ConsumptionModel.fromJson(e)).toList() ?? [],
    );
  }
}

class PhaseModel {
  final int phaseIndex;
  final List<AttributeModel> attributes;

  PhaseModel({required this.phaseIndex, required this.attributes});

  factory PhaseModel.fromJson(Map<String, dynamic> json) {
    return PhaseModel(
      phaseIndex: json['phase_index'],
      attributes: (json['attributes'] as List?)?.map((e) => AttributeModel.fromJson(e)).toList() ?? [],
    );
  }
}

class AttributeModel {
  final int level;
  final int maxHp;
  final int atk;
  final int def;
  final int magicResistance; // <--- 추가
  final int cost;
  final int blockCnt; // <-- 추가

  AttributeModel({
    required this.level,
    required this.maxHp,
    required this.atk,
    required this.def,
    required this.magicResistance,
    required this.cost,
    required this.blockCnt,
  });

  factory AttributeModel.fromJson(Map<String, dynamic> json) {
    return AttributeModel(
      level: json['level'],
      maxHp: json['max_hp'],
      atk: json['atk'],
      def: json['def'],
      magicResistance: json['magic_resistance'] ?? 0, // 기본값 0
      cost: json['cost'],
      blockCnt: json['block_cnt'] ?? 0, // 기본값 0
    );
  }
}

class ConsumptionModel {
  final String type;
  final int level;
  final int count;
  final String itemId; // 아이템 ID 추가
  final String itemName;
  final String iconUrl;
  final int rarity; // 아이템 희귀도 추가

  ConsumptionModel({
    required this.type,
    required this.level,
    required this.count,
    required this.itemId,
    required this.itemName,
    required this.rarity,
    required this.iconUrl,
  });

  factory ConsumptionModel.fromJson(Map<String, dynamic> json) {
    return ConsumptionModel(
      type: json['type'],
      level: json['level'],
      count: json['count'],
      itemId: json['item']['item_id'] ?? '', // itemId 파싱
      itemName: json['item']['name'] ?? '',
      iconUrl: json['item']['icon_url'] ?? '',
      rarity: json['item']['rarity'] ?? 0, // item rarity 파싱
    );
  }
}