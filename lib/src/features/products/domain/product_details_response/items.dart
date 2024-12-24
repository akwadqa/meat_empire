import 'package:freezed_annotation/freezed_annotation.dart';

import 'only_buyers.dart';
import 'with_images.dart';

part 'items.freezed.dart';
part 'items.g.dart';

@freezed
class Items with _$Items {
  factory Items({
    required WithImages withImages,
    required OnlyBuyers onlyBuyers,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}
