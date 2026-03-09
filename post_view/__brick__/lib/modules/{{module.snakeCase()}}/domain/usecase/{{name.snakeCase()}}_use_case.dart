import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entities/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/failures/{{name.snakeCase()}}_failure.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repo.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/validator/{{name.snakeCase()}}_validator.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/failures/{{name.snakeCase()}}_failure.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Validator validator;
  final {{name.pascalCase()}}Repo _repo;

  {{name.pascalCase()}}UseCase(this.validator, this._repo);

  Future<
      Either<
          {{name.pascalCase()}}Failure,
          BaseEntity<{{name.pascalCase()}}Entity>>> execute(
    {{name.pascalCase()}}Param data,
  ) async {
    return validator
        .validate(data)
        .fold(
          (l) => left({{name.pascalCase()}}Failure(error: l.error)),
          (r) async => await _repo.{{name.camelCase()}}(data).then(
          (value) => value.fold(
            (err) => left(
              {{name.pascalCase()}}Failure(error: err.error),
            ),
            (response) => right(response),
          )),
        );
  }
}

