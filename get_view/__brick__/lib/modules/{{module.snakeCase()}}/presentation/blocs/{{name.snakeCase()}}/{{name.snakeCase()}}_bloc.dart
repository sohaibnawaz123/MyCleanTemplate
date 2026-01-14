import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:{{app.snakeCase()}}/core/network/api_response.dart';
import 'package:{{app.snakeCase()}}/core/utils/utils.dart';
import 'package:{{app.snakeCase()}}/features/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/usecase/{{name.snakeCase()}}_use_case.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/routes/{{name.snakeCase()}}_view_initial_params.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{name.pascalCase()}}ViewInitialParams initialParams;
  final {{name.pascalCase()}}UseCase _useCase;

  {{name.pascalCase()}}Bloc(this.initialParams, this._useCase)
      : super({{name.pascalCase()}}State(initialParams: initialParams)) {
    on<Load{{name.pascalCase()}}Event>(_load{{name.pascalCase()}}Action);
  }

  Future<void> _load{{name.pascalCase()}}Action(
      Load{{name.pascalCase()}}Event event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith({{name.camelCase()}}Response: ApiResponse.loading()));
    
    await _useCase.execute(event.param).then((value) => value.fold(
      (l) {
        emit(state.copyWith({{name.camelCase()}}Response: ApiResponse.error(l.error)));
      }, 
      (r) {
        emit(state.copyWith({{name.camelCase()}}Response: ApiResponse.completed(r)));
      },
    ));
  }
}