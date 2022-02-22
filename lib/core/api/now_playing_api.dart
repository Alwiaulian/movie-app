import 'package:dio/dio.dart';
import 'package:doraemon_app/core/log.dart';
// import 'package:flutter/foundation.dart';
import 'package:doraemon_app/core/base_url.dart';

class NowPlayingApi {
  static String nowPlayingUrl =
      'movie/now_playing?api_key=4a7adf3a6e0cb64c16e44c71bf23d8da';

  static getDataNowPlaying() async {
    String url = BaseUrl.baseUrl + nowPlayingUrl;
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
