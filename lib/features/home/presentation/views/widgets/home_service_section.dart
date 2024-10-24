import 'package:flutter/material.dart';

import 'home_service_item.dart';

class HomeServiceSection extends StatelessWidget {
  const HomeServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/express.svg',
              title: 'Shop',
            ),
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/master-pay.svg',
              title: 'MasterPay',
            ),

            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/pay-link.svg',
              title: 'Pay Link',
            ),
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/meta-ads.svg',
              title: 'Meta ads',
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/offers.svg',
              title: 'Offers',
              isSoon: true,
            ),
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/offers.svg',
              title: 'Flay',
              isSoon: true,
            ),
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/store.svg',
              title: 'store',
              isSoon: true,
            ),
            HomeServiceItem(
              svgUrlImg: 'lib/assets/icons/master-tap.svg',
              title: 'MasterTAP',
              isSoon: true,
            ),
          ],
        ),
      ],
    );
  }
}
