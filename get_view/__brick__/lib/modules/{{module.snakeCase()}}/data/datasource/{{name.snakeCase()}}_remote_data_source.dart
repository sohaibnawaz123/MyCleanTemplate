abstract class {{name.pascalCase()}}RemoteDataSource {
  @override
    Future<Either<RepoFailure, BaseJson<{{name.pascalCase()}}Model>>> get{{name.pascalCase()}}({{name.pascalCase()}}Param data);

}

