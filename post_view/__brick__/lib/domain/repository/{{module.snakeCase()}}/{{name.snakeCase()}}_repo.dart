import 'package:fpdart/fpdart.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/data/url/app_url.dart';
import 'package:skyl/data/network/network_handler.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/domain/failures/repo_failure.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/domain/entities/base_entity.dart';
import '../../entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';

abstract class {{name.pascalCase()}}Repo {
  final NetworkHandler _networkHandle;
  final AppUrl _appUrl;

  {{name.pascalCase()}}Repo(this._networkHandle, this._appUrl);
  Future<Either<RepoFailure, BaseEntity>> {{name.camelCase()}}({{name.pascalCase()}}Entity data);
}
