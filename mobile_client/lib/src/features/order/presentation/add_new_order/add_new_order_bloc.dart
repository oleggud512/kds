import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_client/src/core/common/logger.dart';
import 'package:mobile_client/src/features/menu/app/use_cases/get_dishes_use_case.dart';
import 'package:mobile_client/src/features/order/app/use_cases/add_order_use_case.dart';
import 'package:mobile_client/src/features/order/domain/entites/order_item.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_event.dart';
import 'package:mobile_client/src/features/order/presentation/add_new_order/add_new_order_state.dart';

@Injectable()
class AddNewOrderBloc extends Bloc<AddNewOrderEvent, AddNewOrderState> {
  final GetDishesUseCase getDishes;
  final AddOrderUseCase addOrder;

  AddNewOrderBloc(this.getDishes, this.addOrder) 
    : super(AddNewOrderState(
        isLoading: true,
      )) {
    on<AddNewOrderLoadEvent>(_load);
    on<AddNewOrderDishSelectedEvent>(_selectDish);
    on<AddNewOrderDeleteItemEvent>(_deleteItem);
    on<AddNewOrderCountChangedEvent>(_changeAmount);
    on<AddNewOrderCommentChangedEvent>(_changeComment);
    on<AddNewOrderTableChangedEvent>(_changeTable);
    on<AddNewOrderSubmitEvent>(_submit);
  } 

  Future<void> _submit(
    AddNewOrderSubmitEvent event,
    Emitter<AddNewOrderState> emit,
  ) async {
    final res = await addOrder.call(state.items, state.table);
    
    res.fold((l) {
      
    }, (r) {
      event.onSuccess();
    });
  }

  Future<void> _load(
    AddNewOrderLoadEvent event,
    Emitter<AddNewOrderState> emit,
  ) async {
    final dishes = await getDishes();
    dishes.map((right) {
      emit(state.copyWith(
        isLoading: false,
        dishes: right,
      ));
    });
  }

  Future<void> _selectDish(
    AddNewOrderDishSelectedEvent event, 
    Emitter<AddNewOrderState> emit,
  ) async {
    if (state.getOrderItemForDish(event.dish) != null) return;

    final orderItem = OrderItem.create(event.dish,
      count: event.count,
      comment: event.comment,
    );

    emit(state.copyWith(
      items: [...state.items, orderItem]
    ));
  }

  Future<void> _deleteItem(
    AddNewOrderDeleteItemEvent event,
    Emitter<AddNewOrderState> emit,
  ) async {
    final newItems = [...state.items];
    newItems.remove(event.item);
    emit(state.copyWith(items: newItems));
  }

  Future<void> _changeAmount(
    AddNewOrderCountChangedEvent event,
    Emitter<AddNewOrderState> emit,
  ) async {
    final newItems = [...state.items];
    final i = newItems.indexOf(event.item);
    newItems[i] = newItems[i].copyWith(count: event.newCount);
    emit(state.copyWith(items: newItems));
  }

  Future<void> _changeComment(
    AddNewOrderCommentChangedEvent event,
    Emitter<AddNewOrderState> emit,
  ) async {
    final newItems = [...state.items];
    final i = newItems.indexOf(event.item);
    newItems[i] = newItems[i].copyWith(comment: event.newComment);
    emit(state.copyWith(items: newItems));
  }

  Future<void> _changeTable(
    AddNewOrderTableChangedEvent event,
    Emitter<AddNewOrderState> emit,
  ) async {
    emit(state.copyWith(
      table: event.newTable
    ));
  }

}