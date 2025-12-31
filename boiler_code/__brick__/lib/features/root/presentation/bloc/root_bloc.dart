import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:ng9/features/root/presentation/root_initial_params.dart';

part 'root_event.dart';
part 'root_state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  final RootInitialParams _initialParams;
  RootBloc(this._initialParams)
    : super(
        RootState(
          initialParams: _initialParams,
          currentIndex: _initialParams.initialIndex,
        ),
      ) {
    on<OnPageChangeEvent>(_onPageChange);
  }

  Future<void> _onPageChange(
    OnPageChangeEvent event,
    Emitter<RootState> emit,
  ) async {
    emit(state.copyWith(currentIndex: event.index));
  }
}
