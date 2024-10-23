import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:master_pay/core/utility/size_config.dart';

import '../../../../../core/widgets/title_with_more.dart';
import 'home_black_part_of_view.dart';
import 'home_service_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    log((SizeConfig.screenHeight * 0.15).toString());
    return Scaffold(
      body: Column(
        children: [
          const HomeBlackPartOfView(),
          Container(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 21),
            child: const Column(
              children: [
                TitleWithMore(
                  label: 'خدمـاتنـــا المميزة',
                ),
                SizedBox(
                  height: 16,
                ),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


