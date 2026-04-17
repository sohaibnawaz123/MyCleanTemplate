import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import 'package:{{app.snakeCase()}}/modules/app/data/models/base_json.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/data/model/response/{{name.snakeCase()}}_model/{{name.snakeCase()}}_model.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';
abstract class {{name.pascalCase()}}RemoteDataSource {
    Future<Either<RepoFailure, BaseJson<{{name.pascalCase()}}Model>>> {{name.camelCase()}}({{name.pascalCase()}}Param data);

}

