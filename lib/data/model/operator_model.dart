class OperatorModel {
  final String charId;
  final String name;
  final int rarity;
  final String profession;
  final String skinUrl;

  OperatorModel({
    required this.charId,
    required this.name,
    required this.rarity,
    required this.profession,
    required this.skinUrl
  });
}

class OperatorDetailModel extends OperatorModel {
  final String description;
  final List<PhaseModel> phases;
  final List<ConsumptionModel> consumptions;

  OperatorDetailModel({
    required super.charId,
    required super.name,
    required super.rarity,
    required super.profession,
    required super.skinUrl,
    required this.description,
    required this.phases,
    required this.consumptions,
  });
}

class PhaseModel {
  final int phaseIndex;
  final List<AttributeModel> attributes;

  PhaseModel({required this.phaseIndex, required this.attributes});
}

class AttributeModel {
  final int level;
  final int maxHp;
  final int atk;
  final int def;
  final int magicResistance;
  final int cost;
  final int blockCnt;

  AttributeModel({
    required this.level,
    required this.maxHp,
    required this.atk,
    required this.def,
    required this.magicResistance,
    required this.cost,
    required this.blockCnt,
  });
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
}