import 'package:dio/dio.dart';
import 'package:doraemon_app/core/log.dart';
// import 'package:flutter/foundation.dart';
import 'package:doraemon_app/core/base_url.dart';

class TopRatesMoviesApi {
  static String topRatesMoviesUrl =
      'movie/top_rated?api_key=4a7adf3a6e0cb64c16e44c71bf23d8da';

  static getDataTopRatesMovies() async {
    String url = BaseUrl.baseUrl + topRatesMoviesUrl;
    Dio dio = Dio();

    Response response;
    try {
      response = await dio.get(url);
      L.map(response.data);
      return response.data;
    } catch (e) {
      L.error(e.toString());
      return null;
    }
  }
}
