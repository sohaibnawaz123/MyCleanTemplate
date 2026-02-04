class {{name.pascalCase()}}Entity {
  final String userMessage;
  final bool status;

  {{name.pascalCase()}}Entity({
    required this.userMessage,
    required this.status,
  });

  {{name.pascalCase()}}Entity copyWith({
    String? userMessage,
    bool? status,
  }) {
    return {{name.pascalCase()}}Entity(
      userMessage: userMessage ?? this.userMessage,
      status: status ?? this.status,
    );
  }
}
