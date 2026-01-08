part of '{{name.snakeCase()}}_bloc.dart';

class {{name.pascalCase()}}State extends Equatable {
  final {{name.pascalCase()}}ViewInitialParams initialParams;
  final ApiResponse<BaseEntity> {{name.camelCase()}}Response;

  const {{name.pascalCase()}}State({
    required this.initialParams,
    this.{{name.camelCase()}}Response = const ApiResponse.init(),
  });

   {{name.pascalCase()}}State copyWith({
    {{name.pascalCase()}}ViewInitialParams? initialParams,
    ApiResponse<BaseEntity>? {{name.camelCase()}}Response,
  }) {
    {{name.pascalCase()}}State data =   {{name.pascalCase()}}State(
      initialParams: initialParams ?? this.initialParams,
      {{name.camelCase()}}Response: {{name.camelCase()}}Response ?? this.{{name.camelCase()}}Response,
    );
    Utils.logInfo(data.toString(), name: "{{name.pascalCase()}}");
    return data;
  }

 @override
  List<Object?> get props => [initialParams, {{name.camelCase()}}Response];

  @override
  String toString() {
    return '{{name.pascalCase()}}State(initialParams: $initialParams, {{name.camelCase()}}Response: ${{{name.camelCase()}}Response.toString()})';
  }
}
