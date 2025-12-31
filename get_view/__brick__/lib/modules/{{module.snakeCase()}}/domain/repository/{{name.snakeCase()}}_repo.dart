import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import 'package:{{app.snakeCase()}}/core/network/network.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';

abstract class {{name.pascalCase()}}Repo {
  final Network network;
  final AppUrl appUrl;

  {{name.pascalCase()}}Repo(this.network, this.appUrl);
  Future<Either<RepoFailure, BaseEntity>> {{name.camelCase()}}({{name.pascalCase()}}Entity data);
}
