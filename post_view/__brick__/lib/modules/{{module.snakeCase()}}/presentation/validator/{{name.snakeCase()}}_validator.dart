import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/failures/validation_failure.dart';
import 'package:{{app.snakeCase()}}/core/validator/validator.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';


class {{name.pascalCase()}}Validator {
  Either<ValidationFailure, {{name.pascalCase()}}Param> validate({{name.pascalCase()}}Param data) {
    if (Validator.validateEmail(data.email) != null) {
      return left(
        ValidationFailure(error: Validator.validateEmail(data.email)!),
      );
    }  else {
      return right(data);
    }
  }
}