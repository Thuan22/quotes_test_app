import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


Future initializeDependencies() async {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://ron-swanson-quotes.herokuapp.com'));
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  GetIt.instance.registerSingleton(dio);


}
