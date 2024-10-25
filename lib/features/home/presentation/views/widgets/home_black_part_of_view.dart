import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utility/size_config.dart';
import 'home_header_section.dart';
import 'home_wallet_section.dart';

class HomeBlackPartOfView extends StatelessWidget {
  const HomeBlackPartOfView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
      height: SizeConfig.isTablet ? SizeConfig.screenHeight * 0.60 : SizeConfig.screenHeight * 0.40,
      decoration: const BoxDecoration(color: Color(0xff121212)),
      child: const Column(
        children: [
          HomeHeaderSection(),
          SizedBox(
            height: 32,
          ),
          HomeWalletSection(),
        ],
      ),
    );
  }
}
