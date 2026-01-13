import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';

abstract class {{name.pascalCase()}}Repo {
  Future<Either<RepoFailure, BaseEntity<{{name.pascalCase()}}Entity>>> {{name.camelCase()}}(
    {{name.pascalCase()}}Param param,
  );
}