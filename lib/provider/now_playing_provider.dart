import 'dart:convert';

import 'package:doraemon_app/model/now_playing_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../core/api/now_playing_api.dart';
import 'dialog_router.dart';

class NowPlayingProvider with ChangeNotifier {
  final BuildContext context;
  NowPlayingProvider(this.context) {
    getData();
  }
  bool loading = true;
  getData() async {
    loading = true;
    await getNowPlayingData();
    notifyListeners();
    loading = false;
  }

  List<NowPlayingModelData> nowPlayingModelData = [];

  getNowPlayingData() async {
    var nowPlayingdata = await NowPlayingApi.getDataNowPlaying();

    // DialogRouter.displayProgressDialog(context);
    if (nowPlayingdata == null) return;
    List dataList = nowPlayingdata['results'];

    for (var element in dataList) {
      // DialogRouter.displayProgressDialog(context);
      nowPlayingModelData.add(NowPlayingModelData.fromJson(element));
      notifyListeners();
    }
    // DialogRouter.closeProgressDialog(context);
  }
}
