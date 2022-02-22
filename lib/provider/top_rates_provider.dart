import 'dart:convert';

import 'package:doraemon_app/core/flutter_no_sql.dart';
import 'package:doraemon_app/core/sql_no_key.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../core/api/top_rates_movies_api.dart';
import '../model/top_rates_movies_model.dart';
import 'dialog_router.dart';

class TopRatesMoviesProvider with ChangeNotifier {
  final BuildContext context;
  TopRatesMoviesProvider(this.context) {
    getData();
  }
  bool loading = true;
  getData() async {
    loading = true;
    await getTopMoviesData();
    notifyListeners();
    loading = false;
  }

  List<TopRatesMoviesModelData> topRatesMoviesModelData = [];

  getTopMoviesData() async {
    var topMoviesdata = await TopRatesMoviesApi.getDataTopRatesMovies();

    // DialogRouter.displayProgressDialog(context);
    if (topMoviesdata == null) return;
    List dataList = topMoviesdata['results'];

    for (var element in dataList) {
      // DialogRouter.displayProgressDialog(context);
      topRatesMoviesModelData.add(TopRatesMoviesModelData.fromJson(element));
      notifyListeners();
    }
    // DialogRouter.closeProgressDialog(context);
  }
}
