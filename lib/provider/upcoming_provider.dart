import 'dart:convert';

import 'package:doraemon_app/core/api/upcoming_api.dart';
import 'package:doraemon_app/model/upcoming_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../core/api/now_playing_api.dart';
import 'dialog_router.dart';

class UpComingProvider with ChangeNotifier {
  final BuildContext context;
  UpComingProvider(this.context) {
    getData();
  }
  bool loading = true;
  getData() async {
    loading = true;
    await getUpComingData();
    notifyListeners();
    loading = false;
  }

  List<UpComingModelData> upComingModelData = [];

  getUpComingData() async {
    var upComingData = await UpComingApi.getDataUpComing();

    // DialogRouter.displayProgressDialog(context);
    if (upComingData == null) return;
    List dataList = upComingData['results'];

    for (var element in dataList) {
      // DialogRouter.displayProgressDialog(context);
      upComingModelData.add(UpComingModelData.fromJson(element));
      notifyListeners();
    }
    // DialogRouter.closeProgressDialog(context);
  }
}
