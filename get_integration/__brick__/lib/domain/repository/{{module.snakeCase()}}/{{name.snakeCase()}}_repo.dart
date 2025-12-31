import 'package:fpdart/fpdart.dart';
import '../../../../../../../tool_bloc/get_integration/__brick__/lib/data/network/network.dart';
import '../../../../../../../tool_bloc/get_integration/__brick__/lib/data/url/app_url.dart';
import '../../../../../../../tool_bloc/get_integration/__brick__/lib/domain/failures/repo_failure.dart';
import '../../../../../../../tool_bloc/get_integration/__brick__/lib/domain/entities/base_entity.dart';
import '../../entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';

abstract class {{name.pascalCase()}}Repo {
  final Network network;
  final AppUrl appUrl;

  {{name.pascalCase()}}Repo(this.network, this.appUrl);
  Future<Either<RepoFailure, BaseEntity>> {{name.camelCase()}}({{name.pascalCase()}}Entity data);
}
