import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_client/src/features/order/domain/entites/order.dart';

part 'order_page_bloc_params.freezed.dart';

@freezed
class OrderPageBlocParams with _$OrderPageBlocParams {
  factory OrderPageBlocParams({
    required MyOrder order,
    @Default(false) bool listen
  }) = _OrderPageBlocParams;
}