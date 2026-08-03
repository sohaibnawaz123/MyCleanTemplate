import 'package:go_router/go_router.dart';
import 'package:{{app.snakeCase()}}/main.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/blocs/{{name.snakeCase()}}/{{name.snakeCase()}}_bloc.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/routes/{{name.snakeCase()}}_view_initial_params.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/views/{{name.snakeCase()}}_view.dart';

class {{name.pascalCase()}}Route {
  static const String name = '{{module.snakeCase()}}_{{name.snakeCase()}}';
  static const String path = '/{{module.snakeCase()}}/{{name.snakeCase()}}';

  static GoRoute get route => GoRoute(
    name: name,
    path: path,
    builder: (context, state) {
      final params = {{name.pascalCase()}}ViewInitialParams.fromUri(state.uri);
      final bloc = getIt<{{name.pascalCase()}}Bloc>(param1: params);

      return {{name.pascalCase()}}View(bloc: bloc);
    },
  );
}
