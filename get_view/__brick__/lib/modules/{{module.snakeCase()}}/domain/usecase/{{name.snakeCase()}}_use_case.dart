import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/failures/{{name.snakeCase()}}_failure.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repo.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repo _repo;

  {{name.pascalCase()}}UseCase(this._repo);

  Future<
      Either<
          {{name.pascalCase()}}Failure,
          BaseEntity<{{name.pascalCase()}}Entity>>> execute(
    {{name.pascalCase()}}Param data,
  ) async {
    return await _repo.{{name.camelCase()}}(data).then(
          (value) => value.fold(
            (err) => left(
              {{name.pascalCase()}}Failure(error: err.error),
            ),
            (response) => right(response),
          ),
        );
  }
}
