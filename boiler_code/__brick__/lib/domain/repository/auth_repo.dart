import 'package:fpdart/fpdart.dart';
import 'package:{{name.snakeCase()}}/core/failures/network_failure.dart';
import 'package:{{name.snakeCase()}}/core/network/network_response.dart';

abstract class AuthRepo {
  Future<Either<NetworkFailure, NetworkResponse<dynamic>>> refreshToken();
}
