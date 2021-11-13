import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  /*locator.registerFactory(() => ScanResultProvider());*/
  locator.registerLazySingleton(() => Api());

  locator.registerLazySingleton<Dio>(() {
    Dio dio = new Dio();
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return dio;
  });
}
