import 'package:fpdart/fpdart.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/data/header.dart/header.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/data/model/{{name.snakeCase()}}_data_model/{{name.snakeCase()}}_data_model.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/data/network/network_handler.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/data/url/app_url.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/domain/failures/repo_failure.dart';
import '../../../domain/repository/{{module.snakeCase()}}/{{name.snakeCase()}}_repo.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/domain/entities/base_entity.dart';
import '../../../../../../../tool_bloc/post_integration/__brick__/lib/data/model/base_json.dart';
import '../../../domain/entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';


class {{name.pascalCase()}}RestApiRepo implements {{name.pascalCase()}}Repo {
  final NetworkHandler network;
  final AppUrl appUrl;
  {{name.pascalCase()}}RestApiRepo(this.network,this.appUrl);
  @override

  Future<Either<RepoFailure, BaseEntity>> {{name.camelCase()}}({{name.pascalCase()}}Entity data) =>
      network
            .post(
            appUrl.{{name.camelCase()}}Url,
            data.toJson().$2,
            Header.bearerHeaderWithApplicationJson(
                data.toJson().$1),
          )
          .then((value) =>
              value.fold((l) => left(RepoFailure(error: l.error)), (response) {
                 try {
                  return  right(BaseJson.fromJson(response, (_) => null).toDomain((data) => null));
                } catch (e) {
                  return left(RepoFailure(error: e.toString()));
                }
              }));
}
