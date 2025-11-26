import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_statuses.freezed.dart';
part 'order_statuses.g.dart';

@Freezed(
  fromJson: true,
)
abstract class OrderStatuses with _$OrderStatuses {
  const factory OrderStatuses({
    required String value,
    required String name,
  }) = _OrderStatuses;

  /// Custom fromJson method
  factory OrderStatuses.fromJson(Map<String, dynamic> json) {
    // Determine the key based on your condition (e.g., isUpdate)
    return _$OrderStatusesFromJson(json);
  }
}
//         {
        //     "value": "P",
        //     "name": "Paid"
        // },
        // {
        //     "value": "C",
        //     "name": "Complete"
        // },
        // {
        //     "value": "O",
        //     "name": "Open"
        // },
        // {
        //     "value": "F",
        //     "name": "Failed"
        // },
        // {
        //     "value": "D",
        //     "name": "Declined"
        // },
        // {
        //     "value": "B",
        //     "name": "Backordered"
        // },
        // {
        //     "value": "I",
        //     "name": "Canceled"
        // },
        // {
        //     "value": "Y",
        //     "name": "Awaiting call"
        // }