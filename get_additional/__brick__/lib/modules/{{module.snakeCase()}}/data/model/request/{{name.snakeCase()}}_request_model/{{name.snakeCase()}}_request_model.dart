
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';

class {{name.pascalCase()}}RequestModel extends {{name.pascalCase()}}Param {
  const {{name.pascalCase()}}RequestModel({
    required super.token,
    required super.email,
  });

  Map<String, dynamic> toJson() => {
        'token': token,
        'email': email,
      };
}