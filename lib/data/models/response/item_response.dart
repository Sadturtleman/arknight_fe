import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_response.freezed.dart';
part 'item_response.g.dart';

@freezed
abstract class ItemResponse with _$ItemResponse{
  const factory ItemResponse({
    required int itemId,
    required String itemCode,
    required String nameKo,
    required int rarity,
    required String iconId,
    required String itemType,
    required String description
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
    _$ItemResponseFromJson(json);
}