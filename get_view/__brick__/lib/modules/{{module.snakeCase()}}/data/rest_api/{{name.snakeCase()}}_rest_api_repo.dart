import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import 'package:{{app.snakeCase()}}/core/network/api_header.dart';
import 'package:{{app.snakeCase()}}/core/network/network.dart';
import 'package:{{app.snakeCase()}}/modules/app/data/models/base_json.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repo.dart';


class {{name.pascalCase()}}RestApiRepo implements {{name.pascalCase()}}Repo {
  final {{name.pascalCase()}}RemoteDataSource _dataSource;
  {{name.pascalCase()}}RestApiRepo(this._dataSource);
  @override
  Future<Either<RepoFailure, BaseEntity<{{name.pascalCase()}}Entity>>> {{name.camelCase()}}({{name.pascalCase()}}Param data) =>
      _dataSource.get{{name.pascalCase()}}(data).then((value) =>
          value.fold((l) => left(RepoFailure(error: l.error)), (response) {
            try {
              return right(response.toDomain((val) => val.toDomain()));
            } catch (e) {
              return left(RepoFailure(error: e.toString()));
            }
          }));
}
