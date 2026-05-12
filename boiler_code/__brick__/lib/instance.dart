import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/main.dart';
import 'package:{{name.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{name.snakeCase()}}/core/network/network_service.dart';
void getInstance(BuildContext context) {
  getIt = GetIt.instance;
  if (!getIt.isRegistered<NetworkService>()) {
    getIt.registerSingleton<NetworkService>(NetworkService());
  }
  if (!getIt.isRegistered<AppUrl>()) {
    getIt.registerSingleton<AppUrl>(AppUrl());
  }

  
}
