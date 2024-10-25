import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static bool isTablet = false;

  static init(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(393, 830),
      minTextAdapt: true,
    );
    screenWidth = ScreenUtil().screenWidth;
    screenHeight = ScreenUtil().screenHeight;
    isTablet = ScreenUtil().screenWidth >= 600;
  }
}
