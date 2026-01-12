import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/data/model/request/{{name.snakeCase()}}_request_model.dart';

class {{name.pascalCase()}}Param {
  final String token;
  final String email;

  const {{name.pascalCase()}}Param({
    required this.token,
    required this.email,
  });

  {{name.pascalCase()}}RequestModel toModel() => {{name.pascalCase()}}RequestModel(
        token: token,
        email: email,
      );
}