import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';

part 'order_page_state.freezed.dart';

@freezed
class OrderPageState with _$OrderPageState {
  factory OrderPageState({
    required MyOrder order
  }) = _OrderPageState;
}