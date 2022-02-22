import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

// Color
class AppColors {
  static Color mainColor = Color(0xff005FF9);
  static Color bodyTextColor = Color(0xff131313);
  static Color bodyTextGreyColor = Color(0xffA5A6AA);
  static Color lightGrayColor = Color(0xffF2F2F4);
  static Color grayColor = Color(0xff999999);
  static Color orangeColor = Color(0xffFFC369);
  static Color blackColor = Color(0xff000000);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color greenColor = Color(0xff44AE5B);
  static Color redColor = Color(0xffED4848);
  static Color yellowColor = Color(0xffFFC369);
  static Color blueColor = Color(0xff1A72EE);
  static Color lightBlueColor = Color(0xffE1F5FE);

  static Color inputFillColor = Color(0xffF1F1F1);
  static Color inputBorderColor = Color(0xffE0E0E0);
}

// Font Name
class AppFontName {
  static const String PoppinsRegular = 'Poppins_Regular';
  static const String PoppinsBold = 'Poppins_Bold';
}

// Text style
class AppTextStyle {
  static final TextStyle regularTextStyle = TextStyle(
    fontFamily: AppFontName.PoppinsRegular,
    fontWeight: FontWeight.w400,
    color: AppColors.bodyTextColor,
  );
  static final TextStyle boldTextStyle = TextStyle(
    fontFamily: AppFontName.PoppinsBold,
    fontWeight: FontWeight.w700,
    color: AppColors.bodyTextColor,
  );
}

// Padding or Margin
class AppEdgeSize {
  static const double mainEdge = 18;
}

class AppIcons {
  AppIcons._();

  static const _kFontFam = 'AppIcons';
  static const _kFontPkg = null;

  static const IconData back =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData bell =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData calender =
      IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData clear_all =
      IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData cctv_2 =
      IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chat =
      IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData email =
      IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData eye =
      IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home =
      IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_arrow_down_yellow =
      IconData(0xe809, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_calendar =
      IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_eye =
      IconData(0xe80b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_lock =
      IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_messgae =
      IconData(0xe80d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_notif =
      IconData(0xe80e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_renovasi_green =
      IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_tagihan =
      IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData ic_upload =
      IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData lock =
      IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData manu_2 =
      IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData securit_green =
      IconData(0xe814, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData share =
      IconData(0xe815, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData text =
      IconData(0xe816, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData profile =
      IconData(0xe817, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
