import 'dart:convert';

import 'package:doraemon_app/model/popular_movies_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../core/api/popular_movies_api.dart';
import 'dialog_router.dart';

class PopularMoviesProvider with ChangeNotifier {
  final BuildContext context;
  PopularMoviesProvider(this.context) {
    getData();
  }
  bool loading = true;
  getData() async {
    loading = true;
    await getNowPlayingData();
    notifyListeners();
    loading = false;
  }

  List<PopularMoviesData> popularMoviesData = [];

  getNowPlayingData() async {
    var nowPlayingdata = await PopularMoviesApi.getDataPopularMovies();

    // DialogRouter.displayProgressDialog(context);
    if (nowPlayingdata == null) return;
    List dataList = nowPlayingdata['results'];

    for (var element in dataList) {
      // DialogRouter.displayProgressDialog(context);
      popularMoviesData.add(PopularMoviesData.fromJson(element));
      notifyListeners();
    }
    // DialogRouter.closeProgressDialog(context);
  }
}
