import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/main.dart';
import 'package:{{name.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{name.snakeCase()}}/core/network/network.dart';
import 'package:{{name.snakeCase()}}/core/network/network_service.dart';
void getInstance(BuildContext context) {
  getIt = GetIt.instance;
getIt.registerSingleton<Network>(NetworkService());
  getIt.registerSingleton<AppUrl>(AppUrl());

  
}