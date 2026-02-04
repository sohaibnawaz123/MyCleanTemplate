part of '{{name.snakeCase()}}_bloc.dart';

sealed class {{name.pascalCase()}}Event {}

class  Load{{name.pascalCase()}}Event extends {{name.pascalCase()}}Event {
  final {{name.pascalCase()}}Param param;
   Load{{name.pascalCase()}}Event(this.param);
}
