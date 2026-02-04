import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';

class {{name.pascalCase()}}Model {
  String? userMessage;
  bool? status;

  {{name.pascalCase()}}Model({
    this.userMessage,
    this.status,
  });

  factory {{name.pascalCase()}}Model.fromJson(
    Map<String, dynamic> json,
  ) =>
      {{name.pascalCase()}}Model(
        userMessage: json['userMessage'] as String?,
        status: json['status'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'userMessage': userMessage,
        'status': status,
      };

  {{name.pascalCase()}}Entity toEntity() {
    return {{name.pascalCase()}}Entity(
      userMessage: userMessage ?? '',
      status: status ?? false,
    );
  }
}
