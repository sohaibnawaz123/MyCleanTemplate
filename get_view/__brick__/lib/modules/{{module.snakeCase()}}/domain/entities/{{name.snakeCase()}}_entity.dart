import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/data/model/request/{{name.snakeCase()}}_request_model/{{name.snakeCase()}}_request_model.dart';

class {{name.pascalCase()}}Entity {
  final String token;
  final String email;

  {{name.pascalCase()}}Entity({
    required this.token,
    required this.email,
  });
  LoginRequestModel toModel() => LoginRequestModel(
        token: token,
        email: email,
      );
 
}
