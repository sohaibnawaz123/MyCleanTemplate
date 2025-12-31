import 'package:fpdart/fpdart.dart';
import '../../entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/domain/failures/validation_failure.dart';
import '../../../../../../../tool_bloc/post_view/__brick__/lib/domain/validator/validator.dart';

class {{name.pascalCase()}}Validator {
  Either<ValidationFailure, {{name.pascalCase()}}Entity> validate( {{name.pascalCase()}}Entity data) {
    if (Validator.validateEmail(data.email) != null) {
      return left(
          ValidationFailure(error: Validator.validateEmail(data.email)!));
    } 
     else {
      return right(data);
    }
  }
}
