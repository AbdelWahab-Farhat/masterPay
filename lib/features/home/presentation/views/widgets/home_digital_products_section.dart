import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_pay/features/home/presentation/views/widgets/product_item.dart';

import '../../../../../core/utility/size_config.dart';

class HomeDigitalProductsSection extends StatelessWidget {
  const HomeDigitalProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.27,
      child: ListView(
        padding:  EdgeInsets.only(right: 28.w,left: 14.w),
        scrollDirection: Axis.horizontal,
        children: const [
          ProductItem(),
          ProductItem(),
          ProductItem(),
          ProductItem(),
        ],
      ),
    );
  }
}
