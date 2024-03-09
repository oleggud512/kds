import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_list_event.freezed.dart';

@freezed
class OrderListEvent with _$OrderListEvent {
  factory OrderListEvent.load() = OrderListLoadEvent;
}