import 'package:fpdart/fpdart.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/domain/entities/base_entity.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/data/model/{{name.snakeCase()}}_data_model/{{name.snakeCase()}}_data_model.dart';
 import '../../repository/{{module.snakeCase()}}/{{name.snakeCase()}}_repo.dart';
import '../../entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';
import '../../failures/{{module.snakeCase()}}/{{name.snakeCase()}}_failure.dart';
import '../../validator/{{module.snakeCase()}}/{{name.snakeCase()}}_validator.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repo _repo;
  final {{name.pascalCase()}}Validator _validator;
  {{name.pascalCase()}}UseCase(this._repo, this._validator);

  Future<Either<{{name.pascalCase()}}Failure, BaseEntity>> execute({{name.pascalCase()}}Entity data) async =>
      _validator.validate(data).fold(
          (err) => left({{name.pascalCase()}}Failure(error: err.error)),
          (res) async => await _repo.{{name.camelCase()}}(res).then((value) => value.fold(
              (err) => left({{name.pascalCase()}}Failure(error: err.error)),
              (response) => right(response))));
}
