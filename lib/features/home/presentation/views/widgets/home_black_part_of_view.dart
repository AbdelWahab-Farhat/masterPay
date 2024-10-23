import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left: 28, right: 28, top: 48),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.40,
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
