import 'package:flutter/material.dart';
import 'package:master_pay/features/home/presentation/views/widgets/product_item.dart';

import '../../../../../core/utility/size_config.dart';

class HomeDigitalProductsSection extends StatelessWidget {
  const HomeDigitalProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.30,
      child: ListView(
        padding: const EdgeInsets.only(right: 28,left: 14),
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
