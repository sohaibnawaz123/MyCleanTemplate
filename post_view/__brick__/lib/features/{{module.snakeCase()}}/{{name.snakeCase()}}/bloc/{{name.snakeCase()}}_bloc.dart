import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../../../../tool_bloc/post_view/__brick__/lib/domain/entities/base_entity.dart';
import '../../../../domain/entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';
import '../../../../../../../../tool_bloc/post_view/__brick__/lib/domain/response/api_response.dart';
import '../../../../domain/usecase/{{module.snakeCase()}}/{{name.snakeCase()}}_use_case.dart';
import '../../../../../../../../tool_bloc/post_view/__brick__/lib/core/utils/utils.dart';

import '../{{name.snakeCase()}}_initial_params.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{name.pascalCase()}}ViewInitialParams _initialParams;
  final {{name.pascalCase()}}UseCase _useCase;
  {{name.pascalCase()}}Bloc(this._initialParams, this._useCase)
      : super({{name.pascalCase()}}State(initialParams: _initialParams)) {
    on<SubmitActionEvent>(_submitAction);
  }

  Future<void> _submitAction(
      SubmitActionEvent event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith({{name.camelCase()}}Response: ApiResponse.loading()));
    await _useCase.execute(event.data).then((value) => value.fold((l) {
          emit(state.copyWith({{name.camelCase()}}Response: ApiResponse.error(l.error)));
        }, (r) {
          emit(state.copyWith({{name.camelCase()}}Response: ApiResponse.completed(r)));
        }));
  }
}
