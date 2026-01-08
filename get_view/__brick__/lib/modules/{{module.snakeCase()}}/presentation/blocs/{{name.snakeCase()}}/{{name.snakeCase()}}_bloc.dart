import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:{{app.snakeCase()}}/core/network/api_response.dart';
import 'package:{{app.snakeCase()}}/core/utils/utils.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/usecase/{{name.snakeCase()}}_use_case.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/routes/{{name.snakeCase()}}_view_initial_params.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/usecase/{{name.snakeCase()}}_use_case.dart';
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
