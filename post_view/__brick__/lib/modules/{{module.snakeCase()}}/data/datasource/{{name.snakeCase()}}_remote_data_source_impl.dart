import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import 'package:{{app.snakeCase()}}/core/network/api_header.dart';
import 'package:{{app.snakeCase()}}/core/network/network_service.dart';
import 'package:{{app.snakeCase()}}/modules/app/data/models/base_json.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/data/datasource/{{name.snakeCase()}}_remote_data_source.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/data/model/response/{{name.snakeCase()}}_model/{{name.snakeCase()}}_model.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';

class {{name.pascalCase()}}RemoteDataSourceImpl
    implements {{name.pascalCase()}}RemoteDataSource {
  final NetworkService network;
  final AppUrl appUrl;

  {{name.pascalCase()}}RemoteDataSourceImpl(
    this.network,
    this.appUrl,
  );

  @override
  Future<Either<RepoFailure, BaseJson<{{name.pascalCase()}}Model>>> 
      {{name.snakeCase()}}({{name.pascalCase()}}Param data) =>
      network
          .post(
            AppUrl.{{name.camelCase()}}Url,
             data.toModel().toJson(),
            ApiHeader.json(),
        // authType: AuthType.cookie,

          )
          .then(
            (value) => value.fold(
              (l) => left(RepoFailure(error: l.error)),
              (response) {
                try {
                  return right(
                    BaseJson<{{name.pascalCase()}}Model>.fromJson(
                      response.data,
                          {{name.pascalCase()}}Model.fromJson,
                    ),
                  );
                } catch (e) {
                  return left(RepoFailure(error: e.toString()));
                }
              },
            ),
          );
}
