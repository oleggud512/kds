import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_list_state.freezed.dart';

@freezed
class OrderListState with _$OrderListState {
  factory OrderListState({
    @Default(false) bool isLoading,
  }) = _OrderListState;
}