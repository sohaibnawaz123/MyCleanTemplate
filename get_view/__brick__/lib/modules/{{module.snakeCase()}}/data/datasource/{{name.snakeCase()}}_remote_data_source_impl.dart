import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import 'package:{{app.snakeCase()}}/core/network/api_header.dart';
import 'package:{{app.snakeCase()}}/core/network/network.dart';
import 'package:{{app.snakeCase()}}/modules/app/data/models/base_json.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repo.dart';


class {{name.pascalCase()}}RemoteDataSourceImpl implements {{name.pascalCase()}}RemoteDataSource {
  final Network network;
  final AppUrl appUrl;
  {{name.pascalCase()}}RemoteDataSourceImpl(this.network,this.appUrl);
  @override
  Future<Either<RepoFailure, BaseJson<{{name.pascalCase()}}Model>>> {{name.snakeCase()}}({{name.pascalCase()}}Param data) =>
      network
            .get(
            appUrl.{{name.camelCase()}}Url,
          query:  data.toModel().toJson().$2,
            ApiHeader.bearerHeaderWithApplicationJson(
                data.toJson().$1),
          )
          .then((value) =>
              value.fold((l) => left(RepoFailure(error: l.error)), (response) {
                 try {
                  return
                   BaseJson<{{name.pascalCase()}}Model>.fromJson(
                    response,
                    {{name.pascalCase()}}Model.fromJson(response['data']),
                  );

                } catch (e) {
                  return left(RepoFailure(error: e.toString()));
                }
              }));
}
